.class public Lcom/android/settings/myprofile/MyProfileActivity;
.super Landroid/app/Activity;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private btnTextColor:Landroid/widget/Button;

.field private btnTextColorBackground:Landroid/widget/Button;

.field private chkDate:Landroid/widget/CheckBox;

.field private chkTime:Landroid/widget/CheckBox;

.field private isFirstInstance:Z

.field isFromUnlock:Z

.field private isMultiSIMDevice:Z

.field private isTextButtonSelected:Z

.field private lindseyFont:Landroid/graphics/Typeface;

.field private mClockHour01:Landroid/widget/ImageView;

.field private mClockHour02:Landroid/widget/ImageView;

.field private mClockHourDot:Landroid/widget/ImageView;

.field private mClockMin01:Landroid/widget/ImageView;

.field private mClockMin02:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFontFileNames:[Ljava/lang/String;

.field private mFontNames:[Ljava/lang/String;

.field private mFontStylePackageName:[Ljava/lang/String;

.field private mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

.field private mIsLiveWallpaper:Z

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

.field private mSpinnerFontStyle:Landroid/widget/Spinner;

.field private mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

.field private mTypefaces:[Landroid/graphics/Typeface;

.field private selectodBackgroundColor:I

.field private selectodTextColor:I

.field private txtDate:Landroid/widget/TextView;

.field private txtTimeAmPm:Landroid/widget/TextView;

.field private txtTimeAmPmfirst:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    .line 164
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v3

    const-string v1, "com.monotype.android.font.rosemary"

    aput-object v1, v0, v4

    const-string v1, "NotoSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 165
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fonts/Chococooky.ttf"

    aput-object v1, v0, v2

    const-string v1, "fonts/Cooljazz.ttf"

    aput-object v1, v0, v3

    const-string v1, "fonts/Rosemary.ttf"

    aput-object v1, v0, v4

    const-string v1, "NotoSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "fonts/Samsungsans.ttf"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 166
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Choco cooky"

    aput-object v1, v0, v2

    const-string v1, "Cool jazz"

    aput-object v1, v0, v3

    const-string v1, "Rosemary"

    aput-object v1, v0, v4

    const-string v1, "NotoSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "Samsung Sans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    .line 726
    new-instance v0, Lcom/android/settings/myprofile/MyProfileActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$6;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1085
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myprofile/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myprofile/MyProfileActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/myprofile/MyProfileActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/EllipsisEditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/myprofile/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myprofile/MyProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "hourTime"    # Ljava/lang/CharSequence;
    .param p2, "minTime"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1181
    const/16 v5, 0xc

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 1191
    .local v4, "unlock_clock_normal_drawables":[I
    move-object v3, v4

    .line 1193
    .local v3, "target_resources":[I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v0, v5, [I

    .line 1194
    .local v0, "choiceHourNumber":[I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v1, v5, [I

    .line 1195
    .local v1, "choiceMinNumber":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1196
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1199
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    .line 1198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1202
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 1203
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1204
    aget v5, v0, v7

    if-ne v5, v8, :cond_2

    .line 1205
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1218
    :goto_2
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    const/16 v6, 0xa

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1219
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    aget v6, v1, v7

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1220
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    aget v6, v1, v8

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1221
    return-void

    .line 1207
    :cond_2
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v6, v0, v7

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1210
    :cond_3
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1211
    aget v5, v0, v7

    if-ne v5, v8, :cond_4

    .line 1212
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1216
    :goto_3
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v6, v0, v8

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1214
    :cond_4
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v6, v0, v7

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1181
    :array_0
    .array-data 4
        0x7f02048b
        0x7f02048c
        0x7f02048e
        0x7f02048f
        0x7f020490
        0x7f020491
        0x7f020492
        0x7f020493
        0x7f020494
        0x7f020495
        0x7f020496
        0x7f02048d
    .end array-data
.end method

.method private getBackgroundColorValueFromDB()I
    .locals 5

    .prologue
    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------DB BACKGROUND COLOR VALUE ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_background_color"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_background_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 936
    :goto_0
    return v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 936
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getDimension(I)F
    .locals 1
    .param p1, "dim"    # I

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 1129
    const-string v0, "Rosemary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0db4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .line 1176
    .restart local p1    # "fontName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1132
    :cond_1
    const-string v0, "Choco cooky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1133
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0db5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_0

    .line 1135
    :cond_2
    const-string v0, "Cool jazz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0db3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_0

    .line 1138
    :cond_3
    const-string v0, "NotoSerif-Italic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1139
    const-string p1, "NotoSerif-Italic"

    goto :goto_0

    .line 1140
    :cond_4
    const-string v0, "Lindsey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1141
    const-string p1, "Lindsey"

    goto :goto_0

    .line 1143
    :cond_5
    const-string v0, "Baikzongyul pen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0db8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_0

    .line 1147
    :cond_6
    const-string v0, "UDRGothic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1148
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0db9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_0

    .line 1150
    :cond_7
    const-string v0, "UDMincho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1151
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0dba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1153
    :cond_8
    const-string v0, "Pop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0dbb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1157
    :cond_9
    const-string v0, "Shao nv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1158
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a1618

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1160
    :cond_a
    const-string v0, "Kaiti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1161
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a1619

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1163
    :cond_b
    const-string v0, "Miao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1164
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a161a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1167
    :cond_c
    const-string v0, "Apple mint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0db6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1170
    :cond_d
    const-string v0, "Tinker bell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0db7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0a13e5

    const v3, 0x7f0a13db

    .line 882
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_information"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "dbString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 884
    const-string v0, ""

    .line 888
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 889
    const-string v1, "Always with you\u200b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 890
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 905
    :cond_1
    :goto_0
    return-object v0

    .line 891
    :cond_2
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Personal message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 896
    :cond_3
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Personal Banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 897
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a13e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 898
    :cond_4
    const-string v1, "Life companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 900
    :cond_5
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Personal message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextColorValueFromDB()I
    .locals 5

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------DB TEXT COLOR VALUE ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_text_color"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_text_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 920
    :goto_0
    return v1

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 920
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueFromDB(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1045
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1049
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1045
    goto :goto_0

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    .line 1049
    goto :goto_0
.end method

.method private getViewID(Z)I
    .locals 1
    .param p1, "isTextButtonSelected"    # Z

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    const v0, 0x7f1002a3

    .line 582
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f1002a4

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 439
    const v2, 0x7f100242

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/EllipsisEditText;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    .line 440
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setNewActionPopupMenu(IZ)V

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v2, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setWritingBuddyEnabled(Z)V

    .line 447
    const v2, 0x7f1002a3

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    .line 448
    const v2, 0x7f1002a4

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    .line 449
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 450
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    const v3, 0x7f0a0aa2

    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    const v3, 0x7f0a0a9e

    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$1;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$2;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    const v2, 0x7f100249

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/SpLitColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    .line 471
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    .line 474
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->restoreDBColorValue()V

    .line 475
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setPreviewTextView()V

    .line 476
    const-string v2, "my_profile_is_text_button_selected"

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 477
    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 479
    const v2, 0x7f100298

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    .line 480
    const v2, 0x7f100299

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    .line 481
    const v2, 0x7f10029a

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    .line 482
    const v2, 0x7f10029b

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    .line 483
    const v2, 0x7f10029c

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    .line 485
    const v2, 0x7f10029d

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    .line 486
    const v2, 0x7f100297

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    .line 487
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    const v2, 0x7f1002a0

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    .line 489
    const v2, 0x7f10029e

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    .line 490
    const v2, 0x7f1002a1

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Landroid/widget/CheckBox;

    .line 492
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    const-string v3, "show_clock"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 493
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Landroid/widget/CheckBox;

    const-string v3, "lock_screen_date_and_year"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 494
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 495
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 497
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTimeAndDateIntoTextFields()V

    .line 498
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$3;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    .line 510
    const v2, 0x7f10024a

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/GradientColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    .line 513
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$4;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$4;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    .line 526
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 528
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->loadTypeFaces()V

    .line 532
    const v2, 0x7f1002a5

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    .line 533
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 535
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_font_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "selectedFontPackage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 537
    .local v0, "position":I
    if-eqz v1, :cond_1

    .line 538
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 546
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 547
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/EllipsisEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 550
    :cond_3
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 552
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$5;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 576
    return-void

    .line 538
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadTypeFaces()V
    .locals 7

    .prologue
    .line 1055
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Landroid/graphics/Typeface;

    iput-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    .line 1058
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 1059
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "Lindsey"

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "Baikzongyul pen"

    if-ne v5, v6, :cond_2

    .line 1060
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v3, "lindsey_font":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1062
    const-string v5, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    .line 1064
    :cond_1
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    aput-object v6, v5, v2

    .line 1058
    .end local v3    # "lindsey_font":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1065
    :cond_2
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "NotoSerif-Italic"

    if-ne v5, v6, :cond_4

    .line 1066
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    const-string v6, "/system/fonts/NotoSerif-Italic.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1079
    :catch_0
    move-exception v5

    .line 1083
    :cond_3
    return-void

    .line 1068
    :cond_4
    const/4 v4, 0x0

    .line 1070
    .local v4, "otherContext":Landroid/content/Context;
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/myprofile/MyProfileActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1074
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1075
    .local v0, "am":Landroid/content/res/AssetManager;
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5, v0}, Lcom/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1076
    .local v1, "fontTypeface":Landroid/graphics/Typeface;
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aput-object v1, v5, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1071
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "fontTypeface":Landroid/graphics/Typeface;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private refereshTextAndBackGroundColor(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 811
    if-eqz p1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 816
    :goto_0
    return-void

    .line 814
    :cond_0
    const v0, 0x7f100242

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private reflectSelectedTextFontColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v2, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    move v0, p1

    .line 981
    .local v0, "colorValue":I
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->setSelectodColor(I)V

    .line 983
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->refereshTextAndBackGroundColor(Z)V

    .line 985
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ***&&&&%%%### COLOR VALUE --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-void
.end method

.method private restoreDBColorValue()V
    .locals 3

    .prologue
    .line 996
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    .line 997
    .local v0, "colorValue":I
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    .line 998
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 1001
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 1005
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, -0x1000000

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 1006
    const v1, 0x7f100242

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 1007
    return-void

    .line 996
    .end local v0    # "colorValue":I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v0

    goto :goto_0

    .line 1005
    .restart local v0    # "colorValue":I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    goto :goto_1

    .line 1006
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v2

    goto :goto_2
.end method

.method private saveBackgroundColorValueToDB(I)V
    .locals 3
    .param p1, "colorValue"    # I

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 957
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --BACKFROUND COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method private saveProfileTextToDB(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileText"    # Ljava/lang/String;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 712
    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3
    .param p1, "colorValue"    # I

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 947
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --TEXT COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void
.end method

.method private saveTextSizeToDB(Ljava/lang/String;)V
    .locals 2
    .param p1, "textSizeValue"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 872
    return-void
.end method

.method private setAmPm(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v3, 0x8

    .line 1224
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 1225
    .local v1, "b24HourFormat":Z
    if-nez v1, :cond_1

    .line 1228
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1229
    const v2, 0x7f0a1780

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "ampmStr":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    .end local v0    # "ampmStr":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1231
    :cond_0
    const v2, 0x7f0a1781

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ampmStr":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1236
    .end local v0    # "ampmStr":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1237
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPreviewTextView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 625
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/text/InputFilter;

    .line 626
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 627
    .local v1, "profileMaxCharLimit":I
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v8

    .line 628
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v3, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 629
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 630
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 631
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v3}, Lcom/android/settings/myprofile/EllipsisEditText;->getMaxTextSize()F

    move-result v2

    .line 632
    .local v2, "txtSize":F
    :goto_0
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const v4, 0x7f0f0195

    invoke-direct {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 634
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 635
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, -0x67000000

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setShadowLayer(FFFI)V

    .line 637
    :cond_0
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v3, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 638
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 639
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v3, v8, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setSelection(II)V

    .line 643
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v3, :cond_1

    .line 644
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const-string v4, "inputType=option"

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 646
    :cond_1
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v3}, Lcom/android/settings/myprofile/EllipsisEditText;->requestFocus()Z

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 648
    return-void

    .line 631
    .end local v2    # "txtSize":F
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    .line 642
    .restart local v2    # "txtSize":F
    :cond_3
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setSelection(II)V

    goto :goto_1
.end method

.method private setTextOpecity()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1027
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1028
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1029
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1030
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1031
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1032
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1033
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1034
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1035
    return-void

    :cond_0
    move v0, v2

    .line 1027
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1028
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1029
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1030
    goto :goto_3

    :cond_4
    move v0, v2

    .line 1031
    goto :goto_4

    :cond_5
    move v0, v2

    .line 1032
    goto :goto_5

    :cond_6
    move v0, v2

    .line 1033
    goto :goto_6

    :cond_7
    move v1, v2

    .line 1034
    goto :goto_7
.end method

.method private setTimeAndDateIntoTextFields()V
    .locals 12

    .prologue
    .line 585
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 586
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 587
    const-string v3, ""

    .line 588
    .local v3, "dateFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "date_format"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, "dateFormatSetting":Ljava/lang/String;
    const-string v9, "yyyy-MM-dd"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "MM-dd-yyyy"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 591
    :cond_0
    const v9, 0x7f0a177f

    invoke-virtual {p0, v9}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 595
    :cond_1
    :goto_0
    invoke-static {v3, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 596
    .local v2, "date":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 600
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v5, "kk"

    .line 601
    .local v5, "hourFormat":Ljava/lang/String;
    :goto_1
    invoke-static {v5, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 602
    .local v6, "hourTime":Ljava/lang/CharSequence;
    const-string v9, "mm"

    invoke-static {v9, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 603
    .local v7, "minTime":Ljava/lang/CharSequence;
    invoke-direct {p0, v6, v7}, Lcom/android/settings/myprofile/MyProfileActivity;->convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 607
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, "time":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "ampm":Ljava/lang/String;
    const v9, 0x7f0a1780

    invoke-virtual {p0, v9}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const v9, 0x7f0a1781

    invoke-virtual {p0, v9}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 610
    :cond_2
    iget-object v9, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v9, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0    # "ampm":Ljava/lang/String;
    .end local v8    # "time":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setAmPm(Ljava/util/Calendar;)V

    .line 622
    return-void

    .line 592
    .end local v2    # "date":Ljava/lang/CharSequence;
    .end local v5    # "hourFormat":Ljava/lang/String;
    .end local v6    # "hourTime":Ljava/lang/CharSequence;
    .end local v7    # "minTime":Ljava/lang/CharSequence;
    :cond_3
    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 593
    const v9, 0x7f0a177e

    invoke-virtual {p0, v9}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 600
    .restart local v2    # "date":Ljava/lang/CharSequence;
    :cond_4
    const-string v5, "h"

    goto :goto_1

    .line 613
    .restart local v0    # "ampm":Ljava/lang/String;
    .restart local v5    # "hourFormat":Ljava/lang/String;
    .restart local v6    # "hourTime":Ljava/lang/CharSequence;
    .restart local v7    # "minTime":Ljava/lang/CharSequence;
    .restart local v8    # "time":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v9, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 616
    .end local v0    # "ampm":Ljava/lang/String;
    .end local v8    # "time":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method private setValueIntoDatabase(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1039
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void

    .line 1038
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWalllpaper()V
    .locals 6

    .prologue
    .line 354
    const v4, 0x7f100293

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 355
    .local v0, "background":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 356
    .local v1, "mDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 357
    iget-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 358
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 360
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 361
    .local v2, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    .end local v0    # "background":Landroid/widget/ImageView;
    .end local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .end local v3    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 369
    .restart local v0    # "background":Landroid/widget/ImageView;
    .restart local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v4, Lcom/android/settings/myprofile/MyProfileWallpaper;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v0    # "background":Landroid/widget/ImageView;
    .end local v1    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOnScreenKeyPad()V
    .locals 3

    .prologue
    .line 655
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 656
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 657
    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # I

    .prologue
    const v7, 0x7f020501

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f1002a4

    const v3, 0x7f1002a3

    .line 746
    if-nez p1, :cond_0

    .line 807
    :goto_0
    return-void

    .line 749
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 751
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 753
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020502

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 754
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020504

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 757
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 758
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020505

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 767
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 780
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 800
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->showOnScreenKeyPad()V

    goto :goto_0

    .line 769
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020503

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 770
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020504

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 773
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020506

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 774
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 782
    :pswitch_6
    iput-boolean v6, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 784
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 785
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 786
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 790
    :pswitch_7
    iput-boolean v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 792
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0, v5, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 794
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 751
    :pswitch_data_1
    .packed-switch 0x7f1002a3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 767
    :pswitch_data_2
    .packed-switch 0x7f1002a3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 780
    :pswitch_data_3
    .packed-switch 0x7f1002a3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getSelectodBackGroundColor()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    return v0
.end method

.method public getSelectodTextColor()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1011
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    .line 1012
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1024
    :goto_0
    :pswitch_0
    return-void

    .line 1014
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto :goto_0

    .line 1018
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0x7f10029e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 209
    .local v17, "window":Landroid/view/Window;
    if-eqz v17, :cond_0

    .line 210
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 211
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 213
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "window":Landroid/view/Window;
    :cond_0
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "ro.product.name"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "u0lte"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 218
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setRequestedOrientation(I)V

    .line 219
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 222
    .local v2, "intent":Landroid/content/Intent;
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 223
    const-string v18, "direct_lockscren"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    .line 226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/high16 v19, 0x80000

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    .line 228
    new-instance v18, Landroid/content/Intent;

    const-string v19, "intent.stop.app-in-app"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 234
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.udrgothic"

    aput-object v19, v12, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.udmincho"

    aput-object v19, v12, v18

    .line 235
    .local v12, "mJFontStylePackageName":[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/UDRGothic.ttf"

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const-string v19, "fonts/UDMincho.ttf"

    aput-object v19, v10, v18

    .line 236
    .local v10, "mJFontFileNames":[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "UDRGothic"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    const-string v19, "UDMincho"

    aput-object v19, v11, v18

    .line 238
    .local v11, "mJFontNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 239
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    .line 318
    .end local v10    # "mJFontFileNames":[Ljava/lang/String;
    .end local v11    # "mJFontNames":[Ljava/lang/String;
    .end local v12    # "mJFontStylePackageName":[Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    .line 319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 320
    const v18, 0x7f0b00bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTheme(I)V

    .line 323
    :cond_4
    const v18, 0x7f04012d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setContentView(I)V

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 328
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 337
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->init()V

    .line 338
    return-void

    .line 241
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaOpen()Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "CHM"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "CHU"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 242
    :cond_6
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.shaonv"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.kaiti"

    aput-object v19, v9, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.miao"

    aput-object v19, v9, v18

    .line 243
    .local v9, "mCFontStylePackageName":[Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Shaonv.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x1

    const-string v19, "fonts/Kaiti.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Miao.ttf"

    aput-object v19, v7, v18

    .line 244
    .local v7, "mCFontFileNames":[Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Shao nv"

    aput-object v19, v8, v18

    const/16 v18, 0x1

    const-string v19, "Kaiti"

    aput-object v19, v8, v18

    const/16 v18, 0x2

    const-string v19, "Miao"

    aput-object v19, v8, v18

    .line 246
    .local v8, "mCFontNames":[Ljava/lang/String;
    const-string v18, "ro.product.name"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "cs02"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 247
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    .line 248
    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.kaiti"

    aput-object v19, v9, v18

    .line 249
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    .line 250
    const/16 v18, 0x0

    const-string v19, "fonts/Kaiti.ttf"

    aput-object v19, v7, v18

    .line 251
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    .line 252
    const/16 v18, 0x0

    const-string v19, "Kaiti"

    aput-object v19, v8, v18

    .line 255
    :cond_7
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 256
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 257
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 258
    .end local v7    # "mCFontFileNames":[Ljava/lang/String;
    .end local v8    # "mCFontNames":[Ljava/lang/String;
    .end local v9    # "mCFontStylePackageName":[Ljava/lang/String;
    :cond_8
    const-string v18, "CTC"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "TGY"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "BRI"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 259
    :cond_9
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.shaonv"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.kaiti"

    aput-object v19, v9, v18

    .line 260
    .restart local v9    # "mCFontStylePackageName":[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Shaonv.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x1

    const-string v19, "fonts/Kaiti.ttf"

    aput-object v19, v7, v18

    .line 261
    .restart local v7    # "mCFontFileNames":[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Shao nv"

    aput-object v19, v8, v18

    const/16 v18, 0x1

    const-string v19, "Kaiti"

    aput-object v19, v8, v18

    .line 263
    .restart local v8    # "mCFontNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 264
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 266
    .end local v7    # "mCFontFileNames":[Ljava/lang/String;
    .end local v8    # "mCFontNames":[Ljava/lang/String;
    .end local v9    # "mCFontStylePackageName":[Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 267
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 268
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.samsungsans"

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v15, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.chococooky"

    aput-object v19, v15, v18

    const/16 v18, 0x3

    const-string v19, "com.monotype.android.font.applemint"

    aput-object v19, v15, v18

    .line 272
    .local v15, "mKFontStylePackageName":[Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Samsungsans.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v13, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Chococooky.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x3

    const-string v19, "fonts/Applemint.ttf"

    aput-object v19, v13, v18

    .line 276
    .local v13, "mKFontFileNames":[Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Samsung Sans"

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const-string v19, "Baikzongyul pen"

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const-string v19, "Choco cooky"

    aput-object v19, v14, v18

    const/16 v18, 0x3

    const-string v19, "Apple mint"

    aput-object v19, v14, v18

    .line 281
    .local v14, "mKFontNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 283
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 285
    .end local v13    # "mKFontFileNames":[Ljava/lang/String;
    .end local v14    # "mKFontNames":[Ljava/lang/String;
    .end local v15    # "mKFontStylePackageName":[Ljava/lang/String;
    :cond_b
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.chococooky"

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.cooljazz"

    aput-object v19, v15, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.applemint"

    aput-object v19, v15, v18

    const/16 v18, 0x3

    const-string v19, "com.monotype.android.font.tinkerbell"

    aput-object v19, v15, v18

    .line 286
    .restart local v15    # "mKFontStylePackageName":[Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Chococooky.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x1

    const-string v19, "fonts/Cooljazz.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Applemint.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x3

    const-string v19, "fonts/Tinkerbell.ttf"

    aput-object v19, v13, v18

    .line 287
    .restart local v13    # "mKFontFileNames":[Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Choco cooky"

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const-string v19, "Cool jazz"

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const-string v19, "Apple mint"

    aput-object v19, v14, v18

    const/16 v18, 0x3

    const-string v19, "Tinker bell"

    aput-object v19, v14, v18

    .line 289
    .restart local v14    # "mKFontNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 290
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 291
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 293
    .end local v13    # "mKFontFileNames":[Ljava/lang/String;
    .end local v14    # "mKFontNames":[Ljava/lang/String;
    .end local v15    # "mKFontStylePackageName":[Ljava/lang/String;
    :cond_c
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 294
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.samsungsans"

    aput-object v19, v6, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v6, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.chococooky"

    aput-object v19, v6, v18

    const/16 v18, 0x3

    const-string v19, "com.monotype.android.font.cooljazz"

    aput-object v19, v6, v18

    const/16 v18, 0x4

    const-string v19, "com.monotype.android.font.rosemary"

    aput-object v19, v6, v18

    const/16 v18, 0x5

    const-string v19, "NotoSerif-Italic"

    aput-object v19, v6, v18

    .line 300
    .local v6, "mAddFontStylePackageName":[Ljava/lang/String;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Samsungsans.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v4, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Chococooky.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x3

    const-string v19, "fonts/Cooljazz.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x4

    const-string v19, "fonts/Rosemary.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x5

    const-string v19, "NotoSerif-Italic"

    aput-object v19, v4, v18

    .line 306
    .local v4, "mAddFontFileNames":[Ljava/lang/String;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Samsung Sans"

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v5, v18

    const/16 v18, 0x2

    const-string v19, "Choco cooky"

    aput-object v19, v5, v18

    const/16 v18, 0x3

    const-string v19, "Cool jazz"

    aput-object v19, v5, v18

    const/16 v18, 0x4

    const-string v19, "Rosemary"

    aput-object v19, v5, v18

    const/16 v18, 0x5

    const-string v19, "NotoSerif-Italic"

    aput-object v19, v5, v18

    .line 313
    .local v5, "mAddFontNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    .line 314
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    .line 315
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    .line 332
    .end local v4    # "mAddFontFileNames":[Ljava/lang/String;
    .end local v5    # "mAddFontNames":[Ljava/lang/String;
    .end local v6    # "mAddFontStylePackageName":[Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 379
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 381
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 389
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 383
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0a01d1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 386
    const/4 v1, 0x1

    const v2, 0x7f0a07f6

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCustomColorSubmit()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus()Z

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/GradientColorPickerView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/GradientColorPickerView;->setFocusable(Z)V

    .line 972
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 415
    :goto_0
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 417
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 418
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 421
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ms013gctc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->hideCursorControllers()V

    .line 424
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->invalidate()V

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->finish()V

    .line 429
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 401
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveProfileTextToDB(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    .line 403
    const-string v1, "my_profile_is_text_button_selected"

    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 404
    const-string v1, "lock_screen_date_and_year"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 405
    const-string v1, "show_clock"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveBackgroundColorValueToDB(I)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextColorValueToDB(I)V

    .line 409
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_filename"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 410
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_package"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my_profile_font_filename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_filename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", my_profile_font_package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f10010b -> :sswitch_0
        0x7f10010c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 672
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 676
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 677
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v2, "onRestoreInstanceState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eqz p1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v2, "savedInstanceState is not null so load saved values"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v1, "is_text_selected"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    .line 682
    const-string v1, "selected_text_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 683
    const-string v1, "selected_background_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 686
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 689
    .local v0, "colorValue":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 690
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    if-nez v1, :cond_2

    const/high16 v1, -0x1000000

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    .line 691
    const v1, 0x7f100242

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 694
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    .line 696
    .end local v0    # "colorValue":I
    :cond_0
    return-void

    .line 686
    :cond_1
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_0

    .line 690
    .restart local v0    # "colorValue":I
    :cond_2
    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    goto :goto_1

    .line 691
    :cond_3
    iget v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 701
    const-string v0, "selected_text_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    const-string v0, "selected_background_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    const-string v0, "is_text_selected"

    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 704
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 344
    new-instance v0, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    .line 345
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    .line 348
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setWalllpaper()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 834
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    .line 835
    return-void
.end method

.method public setSelectodColor(I)V
    .locals 1
    .param p1, "selectodColor"    # I

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 830
    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    .line 831
    return-void
.end method
