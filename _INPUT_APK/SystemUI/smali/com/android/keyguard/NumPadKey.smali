.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/view/ViewGroup;
.source "NumPadKey.java"


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field private mDigit:I

.field private mDigitImage:Landroid/widget/ImageView;

.field private mDigitText:Landroid/widget/TextView;

.field private mEnableHaptics:Z

.field private mKlondikeText:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mNumericThemeTypeface:Landroid/graphics/Typeface;

.field private mPM:Landroid/os/PowerManager;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewResId:I

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 52
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mNumericThemeTypeface:Landroid/graphics/Typeface;

    .line 56
    new-instance v6, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    .line 188
    new-instance v6, Lcom/android/keyguard/NumPadKey$2;

    invoke-direct {v6, p0}, Lcom/android/keyguard/NumPadKey$2;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 87
    invoke-virtual {p0, v8}, Lcom/android/keyguard/NumPadKey;->setFocusable(Z)V

    .line 89
    sget-object v6, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v6, Lcom/android/keyguard/R$styleable;->NumPadKey_digit:I

    iget v7, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 93
    sget v6, Lcom/android/keyguard/R$styleable;->NumPadKey_textView:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v6, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v6, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 100
    new-instance v6, Lcom/android/keyguard/ObscureSpeechDelegate;

    invoke-direct {v6, p1}, Lcom/android/keyguard/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 102
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    .line 104
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    .line 105
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 107
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    sget v6, Lcom/android/keyguard/R$layout;->keyguard_image_pad_key:I

    invoke-virtual {v1, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    sget v6, Lcom/android/keyguard/R$id;->digit_image:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    .line 116
    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    packed-switch v6, :pswitch_data_0

    .line 150
    :goto_0
    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->theme_pin_klondike_font:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 166
    .local v5, "tfkt":Landroid/graphics/Typeface;
    sget v6, Lcom/android/keyguard/R$id;->klondike_text:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 167
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 169
    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-ltz v6, :cond_1

    .line 170
    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$array;->lockscreen_num_pad_klondike:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 173
    :cond_0
    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v6, v6

    iget v7, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v6, v7, :cond_1

    .line 174
    sget-object v6, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v7, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    aget-object v2, v6, v7

    .line 175
    .local v2, "klondike":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 176
    .local v3, "len":I
    if-lez v3, :cond_4

    .line 177
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .end local v2    # "klondike":Ljava/lang/String;
    .end local v3    # "len":I
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$drawable;->ripple_drawable:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-void

    .line 95
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "tfkt":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 118
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_0
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_1:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_2:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_3:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_4:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 130
    :pswitch_4
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_5:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 133
    :pswitch_5
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_6:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 136
    :pswitch_6
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_7:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 139
    :pswitch_7
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_8:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 142
    :pswitch_8
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_9:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 145
    :pswitch_9
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    sget v7, Lcom/android/keyguard/R$drawable;->num_digit_0:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 153
    :cond_2
    sget v6, Lcom/android/keyguard/R$layout;->keyguard_num_pad_key:I

    invoke-virtual {v1, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    sget v6, Lcom/android/keyguard/R$id;->digit_text:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 155
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const-string v6, "/system/fonts/SamsungSans-Num4Tv.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 157
    .local v4, "mNumTypeface":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mNumericThemeTypeface:Landroid/graphics/Typeface;

    if-eqz v6, :cond_3

    .line 158
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mNumericThemeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    :goto_3
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 160
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 179
    .end local v4    # "mNumTypeface":Landroid/graphics/Typeface;
    .restart local v2    # "klondike":Ljava/lang/String;
    .restart local v3    # "len":I
    .restart local v5    # "tfkt":Landroid/graphics/Typeface;
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;
    .param p1, "x1"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/NumPadKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/NumPadKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/NumPadKey;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mNumericThemeTypeface:Landroid/graphics/Typeface;

    return-object p1
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->performHapticFeedback(II)Z

    .line 279
    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 204
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 205
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 217
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 221
    .local v4, "digitHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 227
    .local v5, "digitWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 228
    .local v6, "klondikeHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    .line 231
    .local v7, "klondikeWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/NumPadKey;->getWidth()I

    move-result v11

    div-int/lit8 v3, v11, 0x2

    .line 233
    .local v3, "centerX":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v11

    if-nez v11, :cond_1

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v4, 0x2

    sub-int v10, v11, v12

    .line 235
    .local v10, "top":I
    mul-int/lit8 v11, v5, 0x2

    sub-int v11, v3, v11

    div-int/lit8 v12, v5, 0x2

    add-int v8, v11, v12

    .line 236
    .local v8, "left":I
    add-int v9, v8, v5

    .line 237
    .local v9, "right":I
    add-int v2, v10, v4

    .line 245
    .local v2, "bottom":I
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 248
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v11, v8, v10, v9, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 253
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v11

    if-nez v11, :cond_3

    .line 254
    int-to-double v12, v2

    int-to-double v14, v6

    const-wide v16, 0x3ff6666666666666L    # 1.4

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v10, v12

    .line 255
    add-int v2, v10, v6

    .line 256
    div-int/lit8 v11, v5, 0x2

    add-int v8, v9, v11

    .line 257
    add-int v9, v8, v7

    .line 264
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v10, v9, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 265
    return-void

    .line 223
    .end local v2    # "bottom":I
    .end local v3    # "centerX":I
    .end local v4    # "digitHeight":I
    .end local v5    # "digitWidth":I
    .end local v6    # "klondikeHeight":I
    .end local v7    # "klondikeWidth":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 224
    .restart local v4    # "digitHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .restart local v5    # "digitWidth":I
    goto :goto_0

    .line 239
    .restart local v3    # "centerX":I
    .restart local v6    # "klondikeHeight":I
    .restart local v7    # "klondikeWidth":I
    :cond_1
    const/16 v10, 0xf

    .line 240
    .restart local v10    # "top":I
    add-int v2, v10, v4

    .line 241
    .restart local v2    # "bottom":I
    div-int/lit8 v11, v5, 0x2

    sub-int v8, v3, v11

    .line 242
    .restart local v8    # "left":I
    add-int v9, v8, v5

    .restart local v9    # "right":I
    goto :goto_1

    .line 250
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v10, v9, v2}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_2

    .line 259
    :cond_3
    add-int/lit8 v10, v2, 0x5

    .line 260
    add-int v2, v10, v6

    .line 261
    div-int/lit8 v11, v7, 0x2

    sub-int v8, v3, v11

    .line 262
    add-int v9, v8, v7

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey;->measureChildren(II)V

    .line 211
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 75
    return-void
.end method
