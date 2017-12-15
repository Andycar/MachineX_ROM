.class public Lcom/android/internal/widget/PasswordEntryKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
    }
.end annotation


# static fields
.field public static final KEYCODE_SPACE:I = 0x20

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field static sSpacebarVerticalCorrection:I


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mF1Key:Landroid/inputmethodservice/Keyboard$Key;

.field private mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

.field private mShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 44
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    .line 45
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 50
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboard;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 59
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;IIII)V

    .line 44
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    .line 45
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 50
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboard;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 44
    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    .line 45
    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 50
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 84
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x108091c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    const v1, 0x108091d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    const v1, 0x105001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    .line 79
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 14
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v7, 0x0

    .line 89
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 90
    .local v0, "key":Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
    iget-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v6, v1, v7

    .line 91
    .local v6, "code":I
    if-ltz v6, :cond_24

    const/16 v1, 0xa

    if-eq v6, v1, :cond_24

    const/16 v1, 0x20

    if-lt v6, v1, :cond_1d

    const/16 v1, 0x7f

    if-le v6, v1, :cond_24

    .line 93
    :cond_1d
    const-string v1, " "

    iput-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->label:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->setEnabled(Z)V

    .line 96
    :cond_24
    iget-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v1, v1, v7

    sparse-switch v1, :sswitch_data_36

    .line 107
    :goto_2b
    return-object v0

    .line 98
    :sswitch_2c
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_2b

    .line 101
    :sswitch_2f
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_2b

    .line 104
    :sswitch_32
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_2b

    .line 96
    nop

    :sswitch_data_36
    .sparse-switch
        -0x67 -> :sswitch_2f
        0xa -> :sswitch_2c
        0x20 -> :sswitch_32
    .end sparse-switch
.end method

.method enableShiftLock()V
    .registers 8

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getShiftKeyIndices()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v4, :cond_40

    aget v3, v0, v2

    .line 144
    .local v3, "index":I
    if-ltz v3, :cond_3d

    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v5, v5

    if-ge v1, v5, :cond_3d

    .line 145
    iget-object v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/Keyboard$Key;

    aput-object v5, v6, v1

    .line 146
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v5, v1

    instance-of v5, v5, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    if-eqz v5, :cond_31

    .line 147
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v5, v1

    check-cast v5, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    invoke-virtual {v5}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->enableShiftLock()V

    .line 149
    :cond_31
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 143
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 153
    .end local v3    # "index":I
    :cond_40
    return-void
.end method

.method public isShifted()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    if-eqz v1, :cond_d

    .line 212
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 214
    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_c
.end method

.method setEnterKeyResources(Landroid/content/res/Resources;III)V
    .registers 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "previewId"    # I
    .param p3, "iconId"    # I
    .param p4, "labelId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_47

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_47

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    :cond_47
    return-void
.end method

.method setShiftLocked(Z)V
    .registers 7
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .local v0, "arr$":[Landroid/inputmethodservice/Keyboard$Key;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 164
    .local v3, "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_10

    .line 165
    iput-boolean p1, v3, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 166
    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 163
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    .end local v3    # "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_13
    if-eqz p1, :cond_19

    const/4 v4, 0x2

    :goto_16
    iput v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 170
    return-void

    .line 169
    :cond_19
    const/4 v4, 0x1

    goto :goto_16
.end method

.method public setShifted(Z)Z
    .registers 7
    .param p1, "shiftState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "shiftChanged":Z
    if-nez p1, :cond_2f

    .line 183
    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-eqz v4, :cond_2d

    move v1, v2

    .line 184
    :goto_a
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    .line 189
    :cond_c
    :goto_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_50

    .line 190
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2a

    .line 191
    if-nez p1, :cond_3d

    .line 192
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 193
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    iput-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .end local v0    # "i":I
    :cond_2d
    move v1, v3

    .line 183
    goto :goto_a

    .line 185
    :cond_2f
    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v4, :cond_c

    .line 186
    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v4, :cond_3b

    move v1, v2

    .line 187
    :goto_38
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    goto :goto_c

    :cond_3b
    move v1, v3

    .line 186
    goto :goto_38

    .line 194
    .restart local v0    # "i":I
    :cond_3d
    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v2, :cond_2a

    .line 195
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iput-boolean v3, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 196
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2a

    .line 202
    :cond_50
    return v1
.end method
