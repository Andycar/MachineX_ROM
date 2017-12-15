.class Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WordTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$1;)V

    .line 177
    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 169
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v0, :cond_b

    .line 170
    new-instance v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    .line 172
    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 242
    if-lez p1, :cond_1a

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_18

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isLetterOrDigit(I)Z
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 247
    if-ltz p1, :cond_15

    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 248
    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 249
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    .line 251
    .end local v0    # "codePoint":I
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isStartBoundary(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_10

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public following(I)[I
    .registers 8
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 186
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 187
    .local v2, "textLegth":I
    if-gtz v2, :cond_b

    .line 207
    :cond_a
    :goto_a
    return-object v3

    .line 190
    :cond_b
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p1, v4, :cond_a

    .line 193
    move v1, p1

    .line 194
    .local v1, "start":I
    if-gez v1, :cond_17

    .line 195
    const/4 v1, 0x0

    .line 197
    :cond_17
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 198
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 199
    if-ne v1, v5, :cond_17

    goto :goto_a

    .line 203
    :cond_2c
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 204
    .local v0, "end":I
    if-eq v0, v5, :cond_a

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 207
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_a
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 181
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    .line 182
    return-void
.end method

.method public preceding(I)[I
    .registers 8
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 212
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 213
    .local v2, "textLegth":I
    if-gtz v2, :cond_b

    .line 233
    :cond_a
    :goto_a
    return-object v3

    .line 216
    :cond_b
    if-lez p1, :cond_a

    .line 219
    move v0, p1

    .line 220
    .local v0, "end":I
    if-le v0, v2, :cond_11

    .line 221
    move v0, v2

    .line 223
    :cond_11
    if-lez v0, :cond_2a

    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, v4}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 224
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 225
    if-ne v0, v5, :cond_11

    goto :goto_a

    .line 229
    :cond_2a
    iget-object v4, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 230
    .local v1, "start":I
    if-eq v1, v5, :cond_a

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 233
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_a
.end method
