.class public Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "PersonalPageConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mRequestedQuality:I

.field private mforLockPatternBackupPin:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 141
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 5

    .prologue
    .line 271
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "pin":Ljava/lang/String;
    const/4 v2, 0x0

    .line 276
    .local v2, "status":Z
    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_0

    .line 277
    const-string v3, "PersonalPageConfirmLockPassword"

    const-string v4, "check PIN for PersonalPage"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockBackupPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    const/4 v2, 0x1

    .line 290
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_1

    .line 291
    const-string v3, "PersonalPageConfirmLockPassword"

    const-string v4, "check Password for PersonalPage"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const/4 v2, 0x1

    .line 297
    :cond_1
    if-eqz v2, :cond_3

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "password"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 308
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 283
    :cond_2
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeLockPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    const/4 v2, 0x1

    goto :goto_0

    .line 304
    :cond_3
    const v3, 0x7f0a08ba

    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_1
.end method

.method private showError(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 357
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 350
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 314
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x7f10009c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "request_quality"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forLockPatternBackupPin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 154
    .local v0, "LockPatternBackupPin":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 155
    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    .line 158
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 159
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    .line 166
    .local v5, "storedQuality":I
    const v8, 0x7f040046

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 169
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f10009c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v8, 0x7f10009d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 171
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    const v8, 0x7f10009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 175
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 176
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 179
    const v8, 0x7f10009e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 180
    const v8, 0x7f100099

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 181
    const/high16 v8, 0x40000

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x50000

    if-eq v8, v5, :cond_0

    const/high16 v8, 0x60000

    if-ne v8, v5, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 186
    .local v3, "isAlpha":Z
    :goto_0
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 188
    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    const v8, 0x7f0a08ac

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 192
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 194
    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v3, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 197
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v8}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 199
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 200
    .local v1, "currentType":I
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .end local v1    # "currentType":I
    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 204
    instance-of v8, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v8, :cond_1

    move-object v4, v0

    .line 205
    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 209
    .local v4, "sa":Lcom/android/settings/SettingsActivity;
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 210
    const v2, 0x7f0a0294

    .line 218
    .local v2, "id":I
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 219
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    .end local v2    # "id":I
    .end local v4    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_1
    if-nez p3, :cond_3

    .line 227
    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v9, 0x20000

    if-ne v8, v9, :cond_2

    .line 229
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mforLockPatternBackupPin:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 231
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModeBackupPinExists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 244
    :cond_2
    :goto_5
    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mRequestedQuality:I

    const/high16 v9, 0x40000

    if-ne v8, v9, :cond_3

    .line 245
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePasswordExists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 253
    :cond_3
    return-object v7

    .line 181
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "isAlpha":Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 188
    .restart local v3    # "isAlpha":Z
    :cond_5
    const v8, 0x7f0a08ae

    goto/16 :goto_1

    .line 194
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    .line 200
    .restart local v1    # "currentType":I
    :cond_7
    const/16 v1, 0x12

    goto :goto_3

    .line 213
    .end local v1    # "currentType":I
    .restart local v4    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_8
    if-eqz v3, :cond_9

    const v2, 0x7f0a08ac

    .restart local v2    # "id":I
    :goto_6
    goto :goto_4

    .end local v2    # "id":I
    :cond_9
    const v2, 0x7f0a08ae

    goto :goto_6

    .line 236
    .end local v4    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_a
    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePinExists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 339
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 343
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 267
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 353
    return-void
.end method
