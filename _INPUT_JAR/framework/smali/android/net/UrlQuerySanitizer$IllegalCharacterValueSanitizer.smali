.class public Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"

# interfaces
.implements Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalCharacterValueSanitizer"
.end annotation


# static fields
.field public static final ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final ALL_ILLEGAL:I = 0x0

.field public static final ALL_OK:I = 0x7ff

.field public static final ALL_WHITESPACE_OK:I = 0x3

.field public static final AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final AMP_LEGAL:I = 0x80

.field public static final AMP_OK:I = 0x80

.field public static final DQUOTE_OK:I = 0x8

.field public static final GT_OK:I = 0x40

.field private static final JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final LT_OK:I = 0x20

.field private static final MIN_SCRIPT_PREFIX_LENGTH:I

.field public static final NON_7_BIT_ASCII_OK:I = 0x4

.field public static final NUL_OK:I = 0x200

.field public static final OTHER_WHITESPACE_OK:I = 0x2

.field public static final PCT_OK:I = 0x100

.field public static final SCRIPT_URL_OK:I = 0x400

.field public static final SPACE_LEGAL:I = 0x1

.field public static final SPACE_OK:I = 0x1

.field public static final SQUOTE_OK:I = 0x10

.field public static final URL_AND_SPACE_LEGAL:I = 0x195

.field public static final URL_LEGAL:I = 0x194

.field private static final VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 275
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "vbscript:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    .line 286
    return-void
.end method

.method private characterIsLegal(C)Z
    .registers 5
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    sparse-switch p1, :sswitch_data_62

    .line 403
    const/16 v2, 0x20

    if-lt p1, v2, :cond_d

    const/16 v2, 0x7f

    if-lt p1, v2, :cond_17

    :cond_d
    const/16 v2, 0x80

    if-lt p1, v2, :cond_60

    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_60

    :cond_17
    :goto_17
    return v0

    .line 393
    :sswitch_18
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 395
    :sswitch_20
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 396
    :sswitch_28
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 397
    :sswitch_30
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 398
    :sswitch_38
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 399
    :sswitch_40
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 400
    :sswitch_48
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 401
    :sswitch_50
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    .line 402
    :sswitch_58
    iget v2, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_17

    move v0, v1

    goto :goto_17

    :cond_60
    move v0, v1

    .line 403
    goto :goto_17

    .line 392
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_58
        0x9 -> :sswitch_20
        0xa -> :sswitch_20
        0xb -> :sswitch_20
        0xc -> :sswitch_20
        0xd -> :sswitch_20
        0x20 -> :sswitch_18
        0x22 -> :sswitch_28
        0x25 -> :sswitch_50
        0x26 -> :sswitch_48
        0x27 -> :sswitch_30
        0x3c -> :sswitch_38
        0x3e -> :sswitch_40
    .end sparse-switch
.end method

.method private isWhitespace(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 372
    sparse-switch p1, :sswitch_data_8

    .line 381
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 379
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 372
    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 353
    .local v1, "last":I
    move v0, v1

    .line 354
    .local v0, "end":I
    :goto_8
    if-gt v2, v0, :cond_17

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 357
    :cond_17
    :goto_17
    if-lt v0, v2, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 358
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 360
    :cond_26
    if-nez v2, :cond_2b

    if-ne v0, v1, :cond_2b

    .line 363
    .end local p1    # "value":Ljava/lang/String;
    :goto_2a
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 303
    if-nez p1, :cond_4

    .line 304
    const/4 v5, 0x0

    .line 339
    :goto_3
    return-object v5

    .line 306
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 307
    .local v3, "length":I
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2c

    .line 308
    sget v5, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    if-lt v3, v5, :cond_2c

    .line 309
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "asLower":Ljava/lang/String;
    const-string v5, "javascript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    const-string/jumbo v5, "vbscript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 312
    :cond_29
    const-string v5, ""

    goto :goto_3

    .line 319
    .end local v0    # "asLower":Ljava/lang/String;
    :cond_2c
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_3a

    .line 320
    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 326
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 327
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    if-ge v2, v3, :cond_5d

    .line 328
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 329
    .local v1, "c":C
    invoke-direct {p0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->characterIsLegal(C)Z

    move-result v5

    if-nez v5, :cond_54

    .line 330
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5a

    .line 331
    const/16 v1, 0x20

    .line 337
    :cond_54
    :goto_54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 334
    :cond_5a
    const/16 v1, 0x5f

    goto :goto_54

    .line 339
    .end local v1    # "c":C
    :cond_5d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method
