.class public abstract Ljava/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CANONICAL_DECOMPOSITION:I = 0x1

.field public static final FULL_DECOMPOSITION:I = 0x2

.field public static final IDENTICAL:I = 0x3

.field public static final NO_DECOMPOSITION:I = 0x0

.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2


# instance fields
.field icuColl:Llibcore/icu/RuleBasedCollatorICU;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Llibcore/icu/RuleBasedCollatorICU;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    .line 159
    return-void
.end method

.method constructor <init>(Llibcore/icu/RuleBasedCollatorICU;)V
    .registers 2
    .param p1, "icuColl"    # Llibcore/icu/RuleBasedCollatorICU;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    .line 152
    return-void
.end method

.method private decompositionMode_ICU_Java(I)I
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 346
    move v0, p1

    .line 347
    .local v0, "javaMode":I
    packed-switch p1, :pswitch_data_a

    .line 355
    :goto_4
    return v0

    .line 349
    :pswitch_5
    const/4 v0, 0x0

    .line 350
    goto :goto_4

    .line 352
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 347
    nop

    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private decompositionMode_Java_ICU(I)I
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 336
    packed-switch p1, :pswitch_data_22

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :pswitch_1c
    const/16 v0, 0x11

    .line 340
    :goto_1e
    return v0

    :pswitch_1f
    const/16 v0, 0x10

    goto :goto_1e

    .line 336
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 251
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 288
    if-nez p0, :cond_a

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_a
    new-instance v0, Ljava/text/RuleBasedCollator;

    new-instance v1, Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {v1, p0}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Ljava/text/RuleBasedCollator;-><init>(Llibcore/icu/RuleBasedCollatorICU;)V

    return-object v0
.end method

.method private strength_ICU_Java(I)I
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 373
    move v0, p1

    .line 374
    .local v0, "javaValue":I
    sparse-switch p1, :sswitch_data_e

    .line 388
    :goto_4
    return v0

    .line 376
    :sswitch_5
    const/4 v0, 0x0

    .line 377
    goto :goto_4

    .line 379
    :sswitch_7
    const/4 v0, 0x1

    .line 380
    goto :goto_4

    .line 382
    :sswitch_9
    const/4 v0, 0x2

    .line 383
    goto :goto_4

    .line 385
    :sswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 374
    nop

    :sswitch_data_e
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_7
        0x2 -> :sswitch_9
        0xf -> :sswitch_b
    .end sparse-switch
.end method

.method private strength_Java_ICU(I)I
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_26

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_1c
    const/4 v0, 0x0

    .line 367
    :goto_1d
    return v0

    .line 363
    :pswitch_1e
    const/4 v0, 0x1

    goto :goto_1d

    .line 365
    :pswitch_20
    const/4 v0, 0x2

    goto :goto_1d

    .line 367
    :pswitch_22
    const/16 v0, 0xf

    goto :goto_1d

    .line 359
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 171
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Collator;

    .line 172
    .local v0, "clone":Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v2}, Llibcore/icu/RuleBasedCollatorICU;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llibcore/icu/RuleBasedCollatorICU;

    iput-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 173
    return-object v0

    .line 174
    .end local v0    # "clone":Ljava/text/Collator;
    :catch_11
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 194
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 223
    instance-of v2, p1, Ljava/text/Collator;

    if-nez v2, :cond_6

    .line 227
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 226
    check-cast v0, Ljava/text/Collator;

    .line 227
    .local v0, "collator":Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    if-nez v2, :cond_13

    iget-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_13
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    iget-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, v2}, Llibcore/icu/RuleBasedCollatorICU;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "string1"    # Ljava/lang/String;
    .param p2, "string2"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public getDecomposition()I
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I

    move-result v0

    return v0
.end method

.method public getStrength()I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->strength_ICU_Java(I)I

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public setDecomposition(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 319
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;->setDecomposition(I)V

    .line 320
    return-void
.end method

.method public setStrength(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 332
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {p0, p1}, Ljava/text/Collator;->strength_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;->setStrength(I)V

    .line 333
    return-void
.end method
