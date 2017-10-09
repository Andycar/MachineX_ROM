.class public Lcom/android/settings/festivaleffect/FestivalEffectGuide;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FestivalEffectGuide.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mEffectDBItem:Ljava/lang/String;

.field private mEffectType:Ljava/lang/String;

.field private mGuideContent:Ljava/lang/String;

.field private mGuideContent2:Ljava/lang/String;

.field private mGuideImgResID:I

.field private mGuideImgResID2:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mLearnAboutTitleID:I

.field private mMessageView:Landroid/widget/TextView;

.field private mMessageView2:Landroid/widget/TextView;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 51
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectType:Ljava/lang/String;

    .line 52
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 53
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 54
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 57
    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 58
    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    return-void
.end method

.method private broadcastHomeLockScreenChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.HOME_LOCK_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method private broadcastNotificationPanelChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "festival_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0a1d72

    const v6, 0x7f0a1d6e

    const v5, 0x7f0a1d6b

    const v4, 0x7f0a187e

    const/4 v3, 0x0

    .line 182
    const-string v1, "home_lock_screen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "festival_effect_home_lock_screen"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a1d76

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1d77

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 187
    const v1, 0x7f0a1d78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 188
    iput v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 189
    const v1, 0x7f0200d7

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 190
    const v1, 0x7f0200d8

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    .line 273
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 192
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    const v1, 0x7f0a1d6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 194
    iput v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 195
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 196
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto :goto_0

    .line 198
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    const-string v1, "notification_panel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    const-string v1, "festival_effect_notification_panel"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 201
    .restart local v0    # "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a1d79

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1d77

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a1d7a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1d7b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 204
    iput v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 205
    const v1, 0x7f0200d9

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 206
    const v1, 0x7f0200da

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 208
    :cond_2
    const v1, 0x7f0a1d70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 209
    const v1, 0x7f0a1d71

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 210
    iput v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 211
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 212
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 214
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string v1, "lock_screen_vn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    const-string v1, "festival_effect_home_lock_screen"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    .restart local v0    # "res":Landroid/content/res/Resources;
    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 218
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 219
    const v1, 0x7f0a001d

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 220
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 221
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 222
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_4
    const-string v1, "notification_panel_vn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    const-string v1, "festival_effect_notification_panel"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    .restart local v0    # "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 226
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 227
    iput v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 228
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 229
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 230
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_5
    const-string v1, "weather_widget"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    const-string v1, "festival_effect_weather_widget"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 233
    .restart local v0    # "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 234
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 235
    const v1, 0x7f0a1d6c

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 236
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 237
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 238
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_6
    const-string v1, "key_melody"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 239
    const-string v1, "festival_effect_key_melody"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    .restart local v0    # "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 242
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 243
    const v1, 0x7f0a1d74

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 244
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 245
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 246
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_7
    const-string v1, "lock_screen_wallpaper_j"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 247
    const-string v1, "festival_effect_home_lock_screen"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    .restart local v0    # "res":Landroid/content/res/Resources;
    const v1, 0x7f0a1d7c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 250
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 251
    const v1, 0x7f0a1d86

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 252
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 253
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 254
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_8
    const-string v1, "notification_panel_j"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 255
    const-string v1, "festival_effect_notification_panel"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 257
    .restart local v0    # "res":Landroid/content/res/Resources;
    const v1, 0x7f0a1d7d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 258
    const v1, 0x7f0a1d7e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 259
    iput v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 260
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 261
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 262
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_9
    const-string v1, "messages_background_j"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 263
    const-string v1, "festival_effect_messages_background"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 265
    .restart local v0    # "res":Landroid/content/res/Resources;
    const v1, 0x7f0a1d7e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    .line 266
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    .line 267
    const v1, 0x7f0a1d87

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    .line 268
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    .line 269
    iput v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto/16 :goto_0

    .line 271
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_a
    const-string v1, "FestivalEffectGuide"

    const-string v2, "Cannot get correct motion information"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public isAllAllowedFunctionDisabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mResolver:Landroid/content/ContentResolver;

    .line 295
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "festival_effect_home_lock_screen"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 296
    .local v0, "lockHomeScreen":I
    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "festival_effect_notification_panel"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, "notificationPanel":I
    or-int v4, v0, v1

    if-ge v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 100
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 101
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400b8

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "guideView":Landroid/view/View;
    const v2, 0x7f1001ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f100014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView:Landroid/widget/ImageView;

    .line 104
    const v2, 0x7f1001d0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView2:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f1001cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView2:Landroid/widget/ImageView;

    .line 107
    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    iget v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    :cond_2
    iget v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView2:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v5, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    const-string v0, "default"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    if-eqz p2, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    const-string v0, "festival_effect_home_lock_screen"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->broadcastHomeLockScreenChanged(Z)V

    .line 164
    :cond_0
    const-string v0, "festival_effect_notification_panel"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->broadcastNotificationPanelChanged(Z)V

    .line 167
    :cond_1
    const-string v0, "festival_effect_weather_widget"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    :cond_2
    const-string v0, "festival_effect_key_melody"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    :goto_1
    return-void

    :cond_4
    move v0, v2

    .line 159
    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "festival_effect_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 75
    const-string v2, "type"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectType:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->setArgument(Ljava/lang/String;)V

    .line 79
    const v2, 0x7f070057

    invoke-virtual {p0, v2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    .line 82
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    .line 83
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 86
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 87
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    .line 95
    .end local v1    # "padding":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    .local v0, "festivalEffectState":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    .end local v0    # "festivalEffectState":Z
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 155
    return-void
.end method
