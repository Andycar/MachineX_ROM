.class public Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "OneHandSideSoftKeyTransparencyPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mCheck:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDonotshowObserver:Landroid/database/ContentObserver;

.field private mOldCheck:I

.field private mOldTransparency:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSideSoftKeySwitchObserver:Landroid/database/ContentObserver;

.field private mTouchInProgress:Z

.field private mTransparency:I

.field private mTransparencyDialog:Landroid/app/Dialog;

.field private mTransparencyObserver:Landroid/database/ContentObserver;

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x63

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->max:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    .line 41
    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    .line 50
    new-instance v0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$1;-><init>(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyObserver:Landroid/database/ContentObserver;

    .line 56
    new-instance v0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$2;-><init>(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mDonotshowObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance v0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$3;-><init>(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSideSoftKeySwitchObserver:Landroid/database/ContentObserver;

    .line 73
    const v0, 0x7f040185

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->setDialogLayoutResource(I)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->onTransparencyChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->onDonotshowChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private onDonotshowChanged()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTransparencyChanged()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    return-void
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldTransparency:I

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_transparency"

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    iget v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldCheck:I

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mRestoredOldState:Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 96
    const v1, 0x7f10036a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 97
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->max:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMin(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_transparency"

    const/16 v3, 0x63

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldTransparency:I

    .line 100
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldTransparency:I

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    const v1, 0x7f10021a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_donotshow"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldCheck:I

    .line 105
    iget v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldCheck:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 106
    .local v0, "checkbox":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_transparency"

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_donotshow"

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    const-string v1, "_Sidesoftkey_Transparency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positiveResult : mTransparency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mDonotshowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSideSoftKeySwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->restoreOldState()V

    .line 156
    const-string v1, "_Sidesoftkey_Transparency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negativeResult : mTransparency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_transparency"

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    const-string v0, "_Sidesoftkey_Transparency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : mTransparency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTouchInProgress:Z

    .line 129
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTouchInProgress:Z

    .line 133
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_transparency"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_donotshow"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mDonotshowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSideSoftKeySwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mRestoredOldState:Z

    .line 90
    return-void
.end method
