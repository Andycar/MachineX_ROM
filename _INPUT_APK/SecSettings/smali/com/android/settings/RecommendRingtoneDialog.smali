.class public Lcom/android/settings/RecommendRingtoneDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;
    }
.end annotation


# instance fields
.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecommendAdapter:Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;

.field private mSelectedPosition:I

.field private offset:I

.field private ringtone:Landroid/media/Ringtone;

.field private ringtoneType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    .line 132
    new-instance v0, Lcom/android/settings/RecommendRingtoneDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RecommendRingtoneDialog$2;-><init>(Lcom/android/settings/RecommendRingtoneDialog;)V

    iput-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RecommendRingtoneDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/RecommendRingtoneDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/RecommendRingtoneDialog;)Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;
    .param p1, "x1"    # Landroid/media/Ringtone;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/RecommendRingtoneDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/RecommendRingtoneDialog;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/RecommendRingtoneDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/RecommendRingtoneDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->offset:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private requestAudioFocus()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const-string v0, "RecommendRingtoneDialog"

    const-string v1, "requestAudioFocus fail. it may be during call"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 117
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 120
    iget v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time_2"

    iget v2, p0, Lcom/android/settings/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time"

    iget v2, p0, Lcom/android/settings/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/RecommendRingtoneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recommend_offset"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->offset:I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ringtoneType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    .line 59
    iput-object p0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    .line 60
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/RecommendRingtoneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 63
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0686

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    new-instance v1, Lcom/android/settings/RecommendRingtoneDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RecommendRingtoneDialog$1;-><init>(Lcom/android/settings/RecommendRingtoneDialog;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    new-instance v1, Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    invoke-direct {v1, p0}, Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;-><init>(Lcom/android/settings/RecommendRingtoneDialog;)V

    iput-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    .line 96
    iget-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 97
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->setupAlert()V

    .line 100
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a067e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 110
    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 111
    return-void
.end method
