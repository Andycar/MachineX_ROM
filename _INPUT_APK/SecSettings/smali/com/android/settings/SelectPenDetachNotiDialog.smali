.class public Lcom/android/settings/SelectPenDetachNotiDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectPenDetachNotiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field private mCurrentNotiPos:I

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

.field public mPenSoundList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPenSoundListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousNotiPos:I

.field private sfx:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 63
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    .line 72
    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    .line 74
    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    .line 75
    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    .line 79
    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    return-void
.end method

.method private stopAnyPlaying()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "currentNotiSound":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 204
    .local v1, "index":I
    return v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 210
    packed-switch p2, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 215
    .local v0, "position":I
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    const-string v2, "SelectPenDetachNotiDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick[OK] - position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / saved Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "position":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->finish()V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->finish()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/SelectPenDetachNotiDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    .line 86
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/SelectPenDetachNotiDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    if-nez v2, :cond_0

    .line 90
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :try_start_0
    new-instance v2, Lcom/android/settings/SelectPenDetachNotiAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/settings/SelectPenDetachNotiAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    .line 93
    sget-object v2, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundList:Ljava/util/ArrayList;

    .line 94
    sget-object v2, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 108
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a117c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 109
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04008f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 110
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    const v2, 0x7f0a01d1

    invoke-virtual {p0, v2}, Lcom/android/settings/SelectPenDetachNotiDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 113
    const v2, 0x7f0a1931

    invoke-virtual {p0, v2}, Lcom/android/settings/SelectPenDetachNotiDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 115
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f100174

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    .line 116
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->setupAlert()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getCurrentSelection()I

    move-result v2

    iput v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    .line 122
    iget v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 123
    const-string v2, "SelectPenDetachNotiDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() positoin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 128
    :goto_1
    return-void

    .line 95
    .end local v0    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lcom/android/settings/SelectPenDetachNotiAdapter;

    sget-object v3, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v6, v6, v3}, Lcom/android/settings/SelectPenDetachNotiAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    .line 100
    sget-object v2, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundList:Ljava/util/ArrayList;

    .line 101
    sget-object v2, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 127
    .restart local v0    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    const-string v2, "SelectPenDetachNotiDialog"

    const-string v3, "onCreate() positoin : -1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    .line 146
    const-string v6, "SelectPenDetachNotiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput p3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    .line 155
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 157
    .local v5, "soundURIs":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->stop()V

    .line 161
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 173
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    .line 197
    :goto_0
    :pswitch_0
    return-void

    .line 167
    :pswitch_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "index":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "previewSound":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, "mPreviewUri":Landroid/net/Uri;
    const-string v6, "SelectPenDetachNotiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewSound : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_3

    .line 178
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 179
    .local v2, "masterStreamVolume":I
    int-to-float v6, v2

    const/high16 v7, 0x40e00000    # 7.0f

    div-float/2addr v6, v7

    const v7, 0x3e99999a    # 0.3f

    mul-float v3, v6, v7

    .line 182
    .local v3, "penSoundVolume":F
    iget v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iget v7, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    if-eq v6, v7, :cond_1

    .line 183
    iget v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iput v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    .line 184
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    .line 187
    :cond_1
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    if-eqz v6, :cond_2

    .line 188
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6, v9}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 190
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 192
    :cond_2
    const-string v6, "SelectPenDetachNotiDialog"

    const-string v7, "There is no Ringtone."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v2    # "masterStreamVolume":I
    .end local v3    # "penSoundVolume":F
    :cond_3
    const-string v6, "SelectPenDetachNotiDialog"

    const-string v7, "audioManager is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->stopAnyPlaying()V

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 134
    return-void
.end method
