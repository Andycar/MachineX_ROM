.class public Landroid/text/MultiSelection;
.super Ljava/lang/Object;
.source "MultiSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MultiSelection$1;,
        Landroid/text/MultiSelection$END;,
        Landroid/text/MultiSelection$START;
    }
.end annotation


# static fields
.field public static final CURRENT_SELECTION_END:Ljava/lang/Object;

.field public static final CURRENT_SELECTION_START:Ljava/lang/Object;

.field private static mHoveredIcon:I

.field private static mIsSelecting:Z

.field private static mIsTextViewHovered:Z

.field private static mNeedToScroll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 319
    new-instance v0, Landroid/text/MultiSelection$START;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$1;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    .line 320
    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$1;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    .line 322
    sput-boolean v1, Landroid/text/MultiSelection;->mIsSelecting:Z

    .line 323
    sput-boolean v1, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    .line 324
    sput-boolean v1, Landroid/text/MultiSelection;->mNeedToScroll:Z

    .line 325
    const/4 v0, -0x1

    sput v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addMultiSelection(Landroid/text/Spannable;II)V
    .registers 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    const/4 v2, 0x0

    .line 163
    if-ltz p1, :cond_5

    if-gez p2, :cond_6

    .line 172
    :cond_5
    :goto_5
    return-void

    .line 165
    :cond_6
    new-instance v1, Landroid/text/MultiSelection$START;

    invoke-direct {v1, v2}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$1;)V

    .line 166
    .local v1, "penStart":Landroid/text/MultiSelection$START;
    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v2}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$1;)V

    .line 168
    .local v0, "penEnd":Landroid/text/MultiSelection$END;
    const/16 v2, 0x222

    invoke-interface {p0, v1, p1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 170
    const/16 v2, 0x22

    invoke-interface {p0, v0, p2, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5
.end method

.method public static final clearMultiSelection(Landroid/text/Spannable;)V
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x0

    .line 201
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    .line 202
    .local v2, "spansStarts":[Landroid/text/MultiSelection$START;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    .line 204
    .local v1, "spansEnds":[Landroid/text/MultiSelection$END;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    array-length v3, v2

    if-ge v0, v3, :cond_2a

    .line 205
    aget-object v3, v2, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 206
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 208
    :cond_2a
    return-void
.end method

.method public static final getHoveredIcon()I
    .registers 1

    .prologue
    .line 293
    sget v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return v0
.end method

.method public static final getIsMultiSelectingText()Z
    .registers 1

    .prologue
    .line 260
    sget-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return v0
.end method

.method public static final getMultiSelectionCount(Landroid/text/Spannable;)I
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 243
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    .line 244
    .local v0, "spans":[Landroid/text/MultiSelection$START;
    array-length v1, v0

    return v1
.end method

.method public static final getMultiSelectionEnd(Landroid/text/Spannable;)[I
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 229
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$END;

    .line 230
    .local v2, "spans":[Landroid/text/MultiSelection$END;
    array-length v3, v2

    new-array v0, v3, [I

    .line 232
    .local v0, "ends":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 233
    aget-object v3, v2, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 235
    :cond_1f
    return-object v0
.end method

.method public static final getMultiSelectionStart(Landroid/text/Spannable;)[I
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 215
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$START;

    .line 216
    .local v1, "spans":[Landroid/text/MultiSelection$START;
    array-length v3, v1

    new-array v2, v3, [I

    .line 218
    .local v2, "starts":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, v1

    if-ge v0, v3, :cond_1f

    .line 219
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v2, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 221
    :cond_1f
    return-object v2
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 55
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 57
    :goto_c
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 43
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 45
    :goto_c
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static final isNeedToScroll()Z
    .registers 1

    .prologue
    .line 309
    sget-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return v0
.end method

.method public static final isTextViewHovered()Z
    .registers 1

    .prologue
    .line 285
    sget-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    return v0
.end method

.method public static final removeCurSelection(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 145
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public static final removeMultiSelection(Landroid/text/Spannable;II)Z
    .registers 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    const-class v3, Landroid/text/MultiSelection$START;

    invoke-interface {p0, p1, p1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/MultiSelection$START;

    .line 180
    .local v2, "spansStarts":[Landroid/text/MultiSelection$START;
    const-class v3, Landroid/text/MultiSelection$END;

    invoke-interface {p0, p2, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    .line 181
    .local v1, "spansEnds":[Landroid/text/MultiSelection$END;
    const/4 v0, 0x1

    .line 183
    .local v0, "ret":Z
    array-length v3, v2

    if-ne v3, v5, :cond_24

    .line 184
    aget-object v3, v2, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 188
    :goto_1b
    array-length v3, v1

    if-ne v3, v5, :cond_26

    .line 189
    aget-object v3, v1, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 193
    :goto_23
    return v0

    .line 186
    :cond_24
    const/4 v0, 0x0

    goto :goto_1b

    .line 191
    :cond_26
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 155
    return-void
.end method

.method public static final setIsMultiSelectingText(Z)V
    .registers 1
    .param p0, "bSelecting"    # Z

    .prologue
    .line 252
    sput-boolean p0, Landroid/text/MultiSelection;->mIsSelecting:Z

    .line 253
    return-void
.end method

.method public static final setNeedToScroll(Z)V
    .registers 1
    .param p0, "bflag"    # Z

    .prologue
    .line 301
    sput-boolean p0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    .line 302
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .registers 25
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 75
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_a

    if-ltz p1, :cond_a

    if-gez p2, :cond_b

    .line 138
    :cond_a
    :goto_a
    return-void

    .line 77
    :cond_b
    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 78
    .local v17, "ostart":I
    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v16

    .line 83
    .local v16, "oend":I
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 84
    .local v6, "len":I
    if-lez p1, :cond_1d

    move/from16 v0, p1

    if-lt v0, v6, :cond_23

    :cond_1d
    if-lez p2, :cond_cb

    move/from16 v0, p2

    if-ge v0, v6, :cond_cb

    .line 85
    :cond_23
    const/4 v15, 0x0

    .line 87
    .local v15, "needCheckPosition":Z
    if-lez p1, :cond_53

    move/from16 v0, p1

    if-ge v0, v6, :cond_53

    .line 88
    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v18

    .line 89
    .local v18, "startChar":C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 91
    :cond_52
    const/4 v15, 0x1

    .line 94
    .end local v18    # "startChar":C
    :cond_53
    if-nez v15, :cond_88

    if-lez p2, :cond_88

    move/from16 v0, p2

    if-ge v0, v6, :cond_88

    .line 95
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v21

    .line 96
    .local v21, "stopChar":C
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 98
    :cond_87
    const/4 v15, 0x1

    .line 102
    .end local v21    # "stopChar":C
    :cond_88
    if-eqz v15, :cond_cb

    .line 103
    new-array v10, v6, [F

    .line 104
    .local v10, "widths":[F
    new-array v4, v6, [C

    .line 105
    .local v4, "chars":[C
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 107
    .local v3, "p":Landroid/graphics/Paint;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 108
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v8, v6

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 110
    :goto_a3
    move/from16 v0, p1

    if-ge v0, v6, :cond_b7

    aget v5, v10, p1

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_b7

    aget-char v5, v4, p1

    const/16 v7, 0xa

    if-eq v5, v7, :cond_b7

    .line 111
    add-int/lit8 p1, p1, 0x1

    goto :goto_a3

    .line 113
    :cond_b7
    :goto_b7
    move/from16 v0, p2

    if-ge v0, v6, :cond_cb

    aget v5, v10, p2

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_cb

    aget-char v5, v4, p2

    const/16 v7, 0xa

    if-eq v5, v7, :cond_cb

    .line 114
    add-int/lit8 p2, p2, 0x1

    goto :goto_b7

    .line 119
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .end local v15    # "needCheckPosition":Z
    :cond_cb
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_d7

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_a

    .line 120
    :cond_d7
    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/MultiSelection$START;

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/MultiSelection$START;

    .line 121
    .local v19, "startSpans":[Landroid/text/MultiSelection$START;
    const/4 v5, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/MultiSelection$END;

    move-object/from16 v0, p0

    invoke-interface {v0, v5, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/MultiSelection$END;

    .line 123
    .local v12, "endSpans":[Landroid/text/MultiSelection$END;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_f6
    move-object/from16 v0, v19

    array-length v5, v0

    if-ge v14, v5, :cond_130

    .line 124
    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 125
    .local v20, "starts":I
    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 127
    .local v13, "ends":I
    move/from16 v0, v20

    move/from16 v1, p1

    if-gt v0, v1, :cond_115

    move/from16 v0, p1

    if-lt v0, v13, :cond_11f

    :cond_115
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_12d

    move/from16 v0, p2

    if-gt v0, v13, :cond_12d

    .line 128
    :cond_11f
    aget-object v5, v19, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 129
    aget-object v5, v12, v14

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 123
    :cond_12d
    add-int/lit8 v14, v14, 0x1

    goto :goto_f6

    .line 133
    .end local v13    # "ends":I
    .end local v20    # "starts":I
    :cond_130
    sget-object v5, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    const/16 v7, 0x222

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 135
    sget-object v5, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/16 v7, 0x22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_a
.end method

.method public static final setTextViewHovered(Z)V
    .registers 2
    .param p0, "bSelecting"    # Z

    .prologue
    .line 268
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    .line 269
    return-void
.end method

.method public static final setTextViewHovered(ZI)V
    .registers 2
    .param p0, "bSelecting"    # Z
    .param p1, "type"    # I

    .prologue
    .line 276
    sput-boolean p0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    .line 277
    sput p1, Landroid/text/MultiSelection;->mHoveredIcon:I

    .line 278
    return-void
.end method
