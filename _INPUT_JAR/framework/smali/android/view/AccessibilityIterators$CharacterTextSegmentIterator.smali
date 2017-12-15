.class Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field protected mImpl:Ljava/text/BreakIterator;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    .line 85
    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Locale;
    .param p2, "x1"    # Landroid/view/AccessibilityIterators$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 76
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 79
    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .registers 8
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 96
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 97
    .local v2, "textLegth":I
    if-gtz v2, :cond_b

    .line 117
    :cond_a
    :goto_a
    return-object v3

    .line 100
    :cond_b
    if-ge p1, v2, :cond_a

    .line 103
    move v1, p1

    .line 104
    .local v1, "start":I
    if-gez v1, :cond_11

    .line 105
    const/4 v1, 0x0

    .line 107
    :cond_11
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 108
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 109
    if-ne v1, v5, :cond_11

    goto :goto_a

    .line 113
    :cond_22
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 114
    .local v0, "end":I
    if-eq v0, v5, :cond_a

    .line 117
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_a
.end method

.method public initialize(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 148
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 149
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 150
    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    .line 153
    :cond_f
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 161
    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    .line 162
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method

.method public preceding(I)[I
    .registers 8
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 122
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 123
    .local v2, "textLegth":I
    if-gtz v2, :cond_b

    .line 143
    :cond_a
    :goto_a
    return-object v3

    .line 126
    :cond_b
    if-lez p1, :cond_a

    .line 129
    move v0, p1

    .line 130
    .local v0, "end":I
    if-le v0, v2, :cond_11

    .line 131
    move v0, v2

    .line 133
    :cond_11
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 134
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 135
    if-ne v0, v5, :cond_11

    goto :goto_a

    .line 139
    :cond_22
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 140
    .local v1, "start":I
    if-eq v1, v5, :cond_a

    .line 143
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_a
.end method
