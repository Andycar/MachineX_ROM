.class public Lcom/android/settings/cloud/CloudDialog;
.super Landroid/app/DialogFragment;
.source "CloudDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cloud/CloudDialog$DialogListener;
    }
.end annotation


# instance fields
.field private dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

.field parentFragment:Lcom/android/settings/cloud/SyncFragment;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 53
    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->parentFragment:Lcom/android/settings/cloud/SyncFragment;

    .line 74
    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cloud/CloudDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudDialog;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudDialog;->dismissProgressDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/cloud/CloudDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cloud/CloudDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/cloud/CloudDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/CloudDialog;->removeAccount(Ljava/lang/String;)V

    return-void
.end method

.method private dismissProgressDialog()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 273
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;
    .locals 3
    .param p0, "dialogType"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dialogListener"    # Lcom/android/settings/cloud/CloudDialog$DialogListener;

    .prologue
    .line 93
    new-instance v1, Lcom/android/settings/cloud/CloudDialog;

    invoke-direct {v1}, Lcom/android/settings/cloud/CloudDialog;-><init>()V

    .line 94
    .local v1, "cloudDialog":Lcom/android/settings/cloud/CloudDialog;
    iput-object p2, v1, Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/android/settings/cloud/CloudDialog;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v1
.end method

.method private removeAccount(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_CLOUD_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "storageVender"

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getVenderId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    const-string v1, "CloudSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAccount -->  sending intent with Cloud Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x1040000

    const/4 v3, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move-object v0, v6

    .line 244
    :goto_1
    return-object v0

    .line 113
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a18e2

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 117
    new-instance v0, Lcom/android/settings/cloud/CloudDialog$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cloud/CloudDialog$1;-><init>(Lcom/android/settings/cloud/CloudDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudDialog$1;->start()Landroid/os/CountDownTimer;

    .line 138
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 140
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "warningMessage":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a18e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a18ed

    new-instance v2, Lcom/android/settings/cloud/CloudDialog$3;

    invoke-direct {v2, p0}, Lcom/android/settings/cloud/CloudDialog$3;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudDialog$2;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 164
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 165
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 168
    .end local v10    # "warningMessage":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, "message":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a18eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a156e

    new-instance v2, Lcom/android/settings/cloud/CloudDialog$5;

    invoke-direct {v2, p0}, Lcom/android/settings/cloud/CloudDialog$5;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudDialog$4;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 192
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 193
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 197
    .end local v9    # "message":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "logoutMessage":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a18c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/cloud/CloudDialog$8;

    invoke-direct {v2, p0}, Lcom/android/settings/cloud/CloudDialog$8;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$7;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudDialog$7;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudDialog$6;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 236
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 237
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 258
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->parentFragment:Lcom/android/settings/cloud/SyncFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->parentFragment:Lcom/android/settings/cloud/SyncFragment;

    invoke-virtual {v0}, Lcom/android/settings/cloud/SyncFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "CloudSettings"

    const-string v1, "CloudDialog,parent frag is null,but dialog is displayed..Dismiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 264
    :cond_0
    return-void
.end method

.method public show(Lcom/android/settings/cloud/SyncFragment;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/settings/cloud/SyncFragment;

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/android/settings/cloud/SyncFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/android/settings/cloud/CloudDialog;->parentFragment:Lcom/android/settings/cloud/SyncFragment;

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/cloud/CloudDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 252
    invoke-virtual {p1}, Lcom/android/settings/cloud/SyncFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cloud/CloudDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
