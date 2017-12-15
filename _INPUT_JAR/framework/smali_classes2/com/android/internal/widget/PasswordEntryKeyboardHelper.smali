.class public Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "PasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final NUMERIC:I = 0x0

.field private static final QWERTY:I = 0x1

.field private static final QWERTY_SHIFTED:I = 0x2

.field private static final SYMBOLS:I = 0x3

.field private static final SYMBOLS_SHIFTED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PasswordEntryKeyboardHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private final mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field mLayouts:[I

.field private mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private final mTargetView:Landroid/view/View;

.field private mUsingScreenWidth:Z

.field private mVibratePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 74
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;
    .param p4, "useFullScreenWidth"    # Z

    .prologue
    .line 79
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z[I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Landroid/inputmethodservice/KeyboardView;
    .param p3, "targetView"    # Landroid/view/View;
    .param p4, "useFullScreenWidth"    # Z
    .param p5, "layouts"    # [I

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 45
    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 63
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_42

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    .line 84
    iput-object p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 86
    iput-object p2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 87
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 88
    iput-boolean p4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    .line 89
    if-eqz p5, :cond_3e

    .line 90
    array-length v1, p5

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v2, v2

    if-eq v1, v2, :cond_2f

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wrong number of layouts"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, p5, v0

    aput v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 97
    .end local v0    # "i":I
    :cond_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboards()V

    .line 98
    return-void

    .line 63
    :array_42
    .array-data 4
        0x111000c
        0x111000e
        0x111000f
        0x1110010
        0x1110011
    .end array-data
.end method

.method private createKeyboardsWithDefaultWidth()V
    .registers 7

    .prologue
    const v5, 0x10204c0

    const/4 v4, 0x1

    .line 138
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 139
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 142
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 147
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 150
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 153
    return-void
.end method

.method private createKeyboardsWithSpecificSize(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v3, 0x10204c0

    const/4 v6, 0x1

    .line 118
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 119
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    aget v2, v2, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 123
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 128
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 131
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mLayouts:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 135
    return-void
.end method

.method private handleCharacter(I[I)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x20

    if-eq p1, v0, :cond_14

    const/16 v0, 0xa

    if-eq p1, v0, :cond_14

    .line 296
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 298
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 299
    return-void
.end method

.method private handleClose()V
    .registers 1

    .prologue
    .line 303
    return-void
.end method

.method private handleModeChange()V
    .registers 4

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 249
    .local v0, "current":Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    .line 250
    .local v1, "next":Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_f

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_1c

    .line 251
    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 255
    :cond_11
    :goto_11
    if-eqz v1, :cond_1b

    .line 256
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 257
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 259
    :cond_1b
    return-void

    .line 252
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_24

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_11

    .line 253
    :cond_24
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_11
.end method

.method private handleShift()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 267
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v5, :cond_8

    .line 291
    :cond_7
    :goto_7
    return-void

    .line 270
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 271
    .local v0, "current":Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    .line 272
    .local v2, "next":Lcom/android/internal/widget/PasswordEntryKeyboard;
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v5, :cond_17

    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v5, :cond_40

    :cond_17
    move v1, v4

    .line 274
    .local v1, "isAlphaMode":Z
    :goto_18
    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v5, :cond_47

    .line 275
    if-eqz v1, :cond_42

    move v5, v4

    :goto_1f
    iput v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 276
    if-eqz v1, :cond_44

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 284
    :cond_25
    :goto_25
    if-eqz v2, :cond_7

    .line 285
    if-eq v2, v0, :cond_2e

    .line 286
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v5, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 288
    :cond_2e
    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_63

    move v5, v4

    :goto_33
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShiftLocked(Z)V

    .line 289
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v6, :cond_65

    :goto_3c
    invoke-virtual {v5, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_7

    .end local v1    # "isAlphaMode":Z
    :cond_40
    move v1, v3

    .line 272
    goto :goto_18

    .restart local v1    # "isAlphaMode":Z
    :cond_42
    move v5, v6

    .line 275
    goto :goto_1f

    .line 276
    :cond_44
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_25

    .line 277
    :cond_47
    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v4, :cond_55

    .line 278
    iput v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 279
    if-eqz v1, :cond_52

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    :goto_51
    goto :goto_25

    :cond_52
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_51

    .line 280
    :cond_55
    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v5, v6, :cond_25

    .line 281
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 282
    if-eqz v1, :cond_60

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    :goto_5f
    goto :goto_25

    :cond_60
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_5f

    :cond_63
    move v5, v3

    .line 288
    goto :goto_33

    :cond_65
    move v4, v3

    .line 289
    goto :goto_3c
.end method

.method private performHapticFeedback()V
    .registers 4

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    if-eqz v0, :cond_b

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->performHapticFeedback(II)Z

    .line 315
    :cond_b
    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .registers 11
    .param p1, "character"    # I

    .prologue
    .line 176
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 177
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 179
    .local v2, "events":[Landroid/view/KeyEvent;
    if-eqz v2, :cond_30

    .line 180
    array-length v0, v2

    .line 181
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_30

    .line 182
    aget-object v1, v2, v3

    .line 183
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 185
    invoke-virtual {v4, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 188
    .end local v0    # "N":I
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v3    # "i":I
    :cond_30
    return-void
.end method


# virtual methods
.method public createKeyboards()V
    .registers 4

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1}, Landroid/inputmethodservice/KeyboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 102
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mUsingScreenWidth:Z

    if-nez v1, :cond_f

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 103
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboardsWithDefaultWidth()V

    .line 107
    :goto_12
    return-void

    .line 105
    :cond_13
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboardsWithSpecificSize(II)V

    goto :goto_12
.end method

.method public handleBackspace()V
    .registers 2

    .prologue
    .line 262
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->performHapticFeedback()V

    .line 264
    return-void
.end method

.method public isAlpha()Z
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onKey(I[I)V
    .registers 5
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 204
    const/4 v0, -0x5

    if-ne p1, v0, :cond_7

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    .line 222
    :cond_6
    :goto_6
    return-void

    .line 206
    :cond_7
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    .line 207
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_6

    .line 208
    :cond_e
    const/4 v0, -0x3

    if-ne p1, v0, :cond_15

    .line 209
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleClose()V

    goto :goto_6

    .line 211
    :cond_15
    const/4 v0, -0x2

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_20

    .line 212
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_6

    .line 214
    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    .line 216
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 218
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 219
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_6
.end method

.method public onPress(I)V
    .registers 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->performHapticFeedback()V

    .line 307
    return-void
.end method

.method public onRelease(I)V
    .registers 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 319
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 323
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .registers 15
    .param p1, "keyEventCode"    # I

    .prologue
    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 192
    .local v2, "eventTime":J
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 193
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 197
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 201
    return-void
.end method

.method public setEnableHaptics(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mEnableHaptics:Z

    .line 111
    return-void
.end method

.method public setKeyboardMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    packed-switch p1, :pswitch_data_3a

    .line 172
    :goto_5
    iput p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 173
    return-void

    .line 158
    :pswitch_8
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 159
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 160
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_password"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_29

    .line 163
    .local v1, "visiblePassword":Z
    :goto_20
    const/4 v0, 0x0

    .line 164
    .local v0, "enablePreview":Z
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v1, :cond_25

    :cond_25
    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_5

    .end local v0    # "enablePreview":Z
    .end local v1    # "visiblePassword":Z
    :cond_29
    move v1, v2

    .line 160
    goto :goto_20

    .line 167
    :pswitch_2b
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 168
    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 169
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_5

    .line 156
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_2b
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .registers 8
    .param p1, "id"    # I

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, "tmpArray":[I
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_a} :catch_11

    move-result-object v2

    .line 237
    :cond_b
    :goto_b
    if-nez v2, :cond_1c

    .line 238
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 245
    :cond_10
    return-void

    .line 232
    :catch_11
    move-exception v0

    .line 233
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_b

    .line 234
    const-string v3, "PasswordEntryKeyboardHelper"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 241
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1c
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    array-length v3, v2

    if-ge v1, v3, :cond_10

    .line 243
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 327
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 331
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 335
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 339
    return-void
.end method
