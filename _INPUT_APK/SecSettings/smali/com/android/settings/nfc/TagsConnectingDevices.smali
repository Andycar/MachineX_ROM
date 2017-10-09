.class public Lcom/android/settings/nfc/TagsConnectingDevices;
.super Landroid/app/Fragment;
.source "TagsConnectingDevices.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;
    }
.end annotation


# static fields
.field private static androidBeamState:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 59
    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 61
    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    .line 63
    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    .line 72
    new-instance v0, Lcom/android/settings/nfc/TagsConnectingDevices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$1;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->createHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->createHelpDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/nfc/TagsConnectingDevices;)Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    return-object v0
.end method

.method private createHelpDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 248
    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 252
    const-string v1, "TagsConnectingDevices"

    const-string v2, "createHelpDialog() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 263
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private createHelpStep2Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 268
    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    .line 272
    const-string v1, "TagsConnectingDevices"

    const-string v2, "createHelpStep2Dialog() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d1

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 283
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getActionBarView()Landroid/view/View;
    .locals 7

    .prologue
    .line 239
    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 240
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_container"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "resId":I
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v4, 0x1

    .line 191
    const-string v1, "TagsConnectingDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 193
    if-eqz p2, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 195
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    if-ne v1, v4, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_beam_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;->show(I)V

    .line 235
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 236
    return-void

    .line 202
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a17b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 205
    const v1, 0x7f0a0374

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 206
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$3;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$4;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$4;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    new-instance v1, Lcom/android/settings/nfc/TagsConnectingDevices$5;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$5;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 230
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    .line 231
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;->show(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    .line 91
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    .line 93
    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 94
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8, v8, v3, v8}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 95
    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 97
    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 103
    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_beam_state"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 113
    .local v2, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 114
    .local v0, "bHelpMode":Z
    if-eqz v2, :cond_0

    .line 115
    const-string v4, "fromHelp"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    new-instance v4, Lcom/android/settings/nfc/TagsConnectingDevices$2;

    invoke-direct {v4, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$2;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    iput-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    .line 138
    invoke-virtual {p0, v8}, Lcom/android/settings/nfc/TagsConnectingDevices;->setHasOptionsMenu(Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    const v1, 0x7f040219

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    .line 184
    invoke-direct {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "actionBar":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 186
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 172
    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 176
    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 178
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 146
    const-string v1, "TagsConnectingDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;->show(I)V

    .line 154
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 157
    const-string v1, "TagsConnectingDevices"

    const-string v2, "Read / Write & unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "TagsConnectingDevices"

    const-string v2, "no BroadcastReceiver to be unregistered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
