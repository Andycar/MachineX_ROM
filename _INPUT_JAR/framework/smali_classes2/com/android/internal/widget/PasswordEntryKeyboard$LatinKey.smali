.class Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 224
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupResId:I

    .line 229
    :cond_15
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 237
    return-void
.end method

.method public isInside(II)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x5

    .line 253
    iget-boolean v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v2, :cond_8

    .line 264
    :goto_7
    return v1

    .line 256
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v0, v2, v1

    .line 257
    .local v0, "code":I
    if-eq v0, v4, :cond_10

    if-ne v0, v3, :cond_28

    .line 258
    :cond_10
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    .line 259
    if-ne v0, v4, :cond_1c

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    .line 260
    :cond_1c
    if-ne v0, v3, :cond_23

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    .line 264
    :cond_23
    :goto_23
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    goto :goto_7

    .line 261
    :cond_28
    const/16 v1, 0x20

    if-ne v0, v1, :cond_23

    .line 262
    sget v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_23
.end method

.method public onReleased(Z)V
    .registers 3
    .param p1, "inside"    # Z

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_8

    .line 242
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 246
    :goto_7
    return-void

    .line 244
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 233
    return-void
.end method
