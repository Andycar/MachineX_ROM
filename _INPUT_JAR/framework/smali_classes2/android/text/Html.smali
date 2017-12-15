.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;

    .prologue
    .line 122
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 124
    .local v2, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_5
    const-string v3, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    # getter for: Landroid/text/Html$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;
    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_e} :catch_18
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_e} :catch_1f

    .line 133
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v2}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 136
    .local v0, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 125
    .end local v0    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_18
    move-exception v1

    .line 127
    .local v1, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 128
    .end local v1    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1f
    move-exception v1

    .line 130
    .local v1, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 213
    sub-int v1, p2, p1

    .line 214
    .local v1, "len":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v2

    .line 215
    .local v2, "levels":[B
    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 216
    .local v0, "buffer":[C
    invoke-static {p0, p1, p2, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 218
    const/4 v4, 0x2

    invoke-static {v4, v0, v2, v1, v5}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v3

    .line 220
    .local v3, "paraDir":I
    packed-switch v3, :pswitch_data_1c

    .line 225
    const-string v4, "<p dir=\"ltr\">"

    :goto_18
    return-object v4

    .line 222
    :pswitch_19
    const-string v4, "<p dir=\"rtl\">"

    goto :goto_18

    .line 220
    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_19
    .end packed-switch
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Landroid/text/Spanned;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v7, 0xa

    .line 231
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    move v2, p2

    .local v2, "i":I
    :goto_a
    if-ge v2, p3, :cond_2f

    .line 235
    invoke-static {p1, v7, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 236
    .local v6, "next":I
    if-gez v6, :cond_13

    .line 237
    move v6, p3

    .line 240
    :cond_13
    const/4 v4, 0x0

    .line 242
    .local v4, "nl":I
    :goto_14
    if-ge v6, p3, :cond_21

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_21

    .line 243
    add-int/lit8 v4, v4, 0x1

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 247
    :cond_21
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_2d

    const/4 v5, 0x1

    :goto_26
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    .line 234
    move v2, v6

    goto :goto_a

    .line 247
    :cond_2d
    const/4 v5, 0x0

    goto :goto_26

    .line 250
    .end local v4    # "nl":I
    .end local v6    # "next":I
    :cond_2f
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 196
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_34

    .line 197
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 198
    .local v4, "next":I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 200
    .local v6, "quotes":[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, "arr$":[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_14
    if-ge v2, v3, :cond_20

    aget-object v5, v0, v2

    .line 201
    .local v5, "quote":Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 204
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    :cond_20
    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 206
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v3, :cond_32

    aget-object v5, v0, v2

    .line 207
    .restart local v5    # "quote":Landroid/text/style/QuoteSpan;
    const-string v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 196
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    :cond_32
    move v1, v4

    goto :goto_1

    .line 210
    .end local v0    # "arr$":[Landroid/text/style/QuoteSpan;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "next":I
    .end local v6    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_34
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 161
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_93

    .line 162
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 163
    .local v6, "next":I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 164
    .local v7, "style":[Landroid/text/style/ParagraphStyle;
    const-string v1, " "

    .line 165
    .local v1, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, "needDiv":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1d
    array-length v8, v7

    if-ge v3, v8, :cond_75

    .line 168
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_46

    .line 169
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 171
    .local v0, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 172
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_49

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 174
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_49
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_61

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 177
    :cond_61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 181
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_75
    if-eqz v5, :cond_86

    .line 182
    const-string v8, "<div "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_86
    invoke-static {p0, p1, v2, v6}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 187
    if-eqz v5, :cond_90

    .line 188
    const-string v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_90
    move v2, v6

    goto/16 :goto_5

    .line 191
    .end local v1    # "elements":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "needDiv":Z
    .end local v6    # "next":I
    .end local v7    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_93
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .registers 15
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "nl"    # I
    .param p5, "last"    # Z

    .prologue
    .line 257
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_1a8

    .line 258
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 259
    .local v3, "next":I
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/CharacterStyle;

    .line 262
    .local v6, "style":[Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_12
    array-length v7, v6

    if-ge v2, v7, :cond_111

    .line 263
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_35

    .line 264
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 266
    .local v5, "s":I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2c

    .line 267
    const-string v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_2c
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_35

    .line 270
    const-string v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v5    # "s":I
    :cond_35
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_50

    .line 274
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "s":Ljava/lang/String;
    const-string v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 277
    const-string v7, "<tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .end local v5    # "s":Ljava/lang/String;
    :cond_50
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_5b

    .line 281
    const-string v7, "<sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_5b
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_66

    .line 284
    const-string v7, "<sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_66
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_71

    .line 287
    const-string v7, "<u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_71
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_7c

    .line 290
    const-string v7, "<strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_7c
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_97

    .line 293
    const-string v7, "<a href=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/URLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_97
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ImageSpan;

    if-eqz v7, :cond_b3

    .line 298
    const-string v7, "<img src=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ImageSpan;

    invoke-virtual {v7}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    move v1, v3

    .line 305
    :cond_b3
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_d0

    .line 306
    const-string v7, "<font size =\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_d0
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_10d

    .line 311
    const-string v7, "<font color =\"#"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    const/high16 v8, 0x1000000

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "color":Ljava/lang/String;
    :goto_ea
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_105

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ea

    .line 317
    :cond_105
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .end local v0    # "color":Ljava/lang/String;
    :cond_10d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 322
    :cond_111
    invoke-static {p0, p1, v1, v3}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 324
    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    :goto_117
    if-ltz v2, :cond_1a5

    .line 325
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_124

    .line 326
    const-string v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_124
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_12f

    .line 329
    const-string v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_12f
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_13a

    .line 332
    const-string v7, "</a>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_13a
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_145

    .line 335
    const-string v7, "</strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_145
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_150

    .line 338
    const-string v7, "</u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_150
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_15b

    .line 341
    const-string v7, "</sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_15b
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_166

    .line 344
    const-string v7, "</sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_166
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_181

    .line 347
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 349
    .restart local v5    # "s":Ljava/lang/String;
    const-string v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_181

    .line 350
    const-string v7, "</tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .end local v5    # "s":Ljava/lang/String;
    :cond_181
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_1a1

    .line 354
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 356
    .local v5, "s":I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_198

    .line 357
    const-string v7, "</b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_198
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1a1

    .line 360
    const-string v7, "</i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .end local v5    # "s":I
    :cond_1a1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_117

    .line 257
    :cond_1a5
    move v1, v3

    goto/16 :goto_1

    .line 366
    .end local v2    # "j":I
    .end local v3    # "next":I
    .end local v6    # "style":[Landroid/text/style/CharacterStyle;
    :cond_1a8
    if-eqz p5, :cond_1b5

    const-string v4, ""

    .line 368
    .local v4, "p":Ljava/lang/String;
    :goto_1ac
    const/4 v7, 0x1

    if-ne p4, v7, :cond_1cd

    .line 369
    const-string v7, "<br>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :goto_1b4
    return-void

    .line 366
    .end local v4    # "p":Ljava/lang/String;
    :cond_1b5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "</p>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1ac

    .line 370
    .restart local v4    # "p":Ljava/lang/String;
    :cond_1cd
    const/4 v7, 0x2

    if-ne p4, v7, :cond_1d4

    .line 371
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b4

    .line 373
    :cond_1d4
    const/4 v1, 0x2

    :goto_1d5
    if-ge v1, p4, :cond_1df

    .line 374
    const-string v7, "<br>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d5

    .line 376
    :cond_1df
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b4
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 14
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const v9, 0xdfff

    const v8, 0xd800

    const v7, 0xdc00

    const/16 v6, 0x20

    .line 382
    move v3, p2

    .local v3, "i":I
    :goto_c
    if-ge v3, p3, :cond_97

    .line 383
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 385
    .local v0, "c":C
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1e

    .line 386
    const-string v4, "&lt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_1b
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 387
    :cond_1e
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_28

    .line 388
    const-string v4, "&gt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 389
    :cond_28
    const/16 v4, 0x26

    if-ne v0, v4, :cond_32

    .line 390
    const-string v4, "&amp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 391
    :cond_32
    if-lt v0, v8, :cond_63

    if-gt v0, v9, :cond_63

    .line 392
    if-ge v0, v7, :cond_1b

    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_1b

    .line 393
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 394
    .local v2, "d":C
    if-lt v2, v7, :cond_1b

    if-gt v2, v9, :cond_1b

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 396
    const/high16 v4, 0x10000

    sub-int v5, v0, v8

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    sub-int v5, v2, v7

    or-int v1, v4, v5

    .line 397
    .local v1, "codepoint":I
    const-string v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 400
    .end local v1    # "codepoint":I
    .end local v2    # "d":C
    :cond_63
    const/16 v4, 0x7e

    if-gt v0, v4, :cond_69

    if-ge v0, v6, :cond_79

    .line 401
    :cond_69
    const-string v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 402
    :cond_79
    if-ne v0, v6, :cond_93

    .line 403
    :goto_7b
    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_8f

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_8f

    .line 404
    const-string v4, "&nbsp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 408
    :cond_8f
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 410
    :cond_93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 413
    .end local v0    # "c":C
    :cond_97
    return-void
.end method
