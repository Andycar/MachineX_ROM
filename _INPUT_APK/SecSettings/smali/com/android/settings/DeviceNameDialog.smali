.class public Lcom/android/settings/DeviceNameDialog;
.super Landroid/app/Activity;
.source "DeviceNameDialog.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mMaxToast:Landroid/widget/Toast;

.field private mTempName:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mTempName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceNameDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/DeviceNameDialog;->saveToDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DeviceNameDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mTempName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/DeviceNameDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceNameDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/DeviceNameDialog;->mTempName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/DeviceNameDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DeviceNameDialog;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceNameDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mMaxToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/DeviceNameDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceNameDialog;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/DeviceNameDialog;->mMaxToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private createDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040083

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DeviceNameDialog;->mView:Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/android/settings/DeviceNameDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceNameDialog;->initView(Landroid/view/View;)V

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings/DeviceNameDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 59
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const v2, 0x7f0a14af

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 63
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DeviceNameDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceNameDialog$1;-><init>(Lcom/android/settings/DeviceNameDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/DeviceNameDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceNameDialog$2;-><init>(Lcom/android/settings/DeviceNameDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 81
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/DeviceNameDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/DeviceNameDialog$3;-><init>(Lcom/android/settings/DeviceNameDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/DeviceNameDialog$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/DeviceNameDialog$4;-><init>(Lcom/android/settings/DeviceNameDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 131
    return-void

    .line 62
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x7f0a14b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 135
    .local v3, "res":Landroid/content/ContentResolver;
    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "deviceName":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/settings/DeviceNameDialog;->mTempName:Ljava/lang/String;

    .line 137
    const-string v4, "DeviceNameDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initView"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mView:Landroid/view/View;

    const v5, 0x7f100165

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    .line 139
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 148
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 149
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings/DeviceNameDialog$5;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceNameDialog$5;-><init>(Lcom/android/settings/DeviceNameDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    const-string v5, "disableAutoReplacement=true"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    const-string v5, "disableEmoticonInput=true"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "maxLength"

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/DeviceNameDialog;->showInputMethod()V

    .line 164
    return-void

    .line 143
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "DeviceNameDialog"

    const-string v5, "Caught Exception setSelection"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveToDb()Z
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings/DeviceNameDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 206
    .local v1, "res":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const-string v2, "device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    const/4 v2, 0x1

    .line 211
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 169
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameDialog$6;-><init>(Lcom/android/settings/DeviceNameDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/DeviceNameDialog$7;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceNameDialog$7;-><init>(Lcom/android/settings/DeviceNameDialog;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 221
    const-string v1, "DeviceNameDialog"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceNameDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 223
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/DeviceNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 201
    invoke-direct {p0}, Lcom/android/settings/DeviceNameDialog;->createDialog()V

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/DeviceNameDialog;->showInputMethod()V

    .line 218
    return-void
.end method
