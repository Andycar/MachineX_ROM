.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object;

.field private static final CAP:Ljava/lang/Object;

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_RETURN_VALUE:I = 0x2

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_RETURN_VALUE:I = 0x1

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object;

.field private static final SYM:Ljava/lang/Object;

.field private static final USED:I = 0x3000011


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 134
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 5
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 298
    .local v0, "current":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    .line 299
    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 302
    :cond_10
    :goto_10
    return-void

    .line 300
    :cond_11
    const v1, 0x2000011

    if-ne v0, v1, :cond_10

    .line 301
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static adjustMetaAfterKeypress(J)J
    .registers 12
    .param p0, "state"    # J

    .prologue
    const-wide v2, -0x1010100000102L

    const-wide v8, -0x2020200000203L

    const-wide v6, -0x4040400000405L

    const-wide/16 v4, 0x0

    .line 518
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_54

    .line 519
    and-long v0, p0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long p0, v0, v2

    .line 524
    :cond_27
    :goto_27
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5d

    .line 525
    and-long v0, p0, v8

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide v2, 0x200000000L

    or-long p0, v0, v2

    .line 530
    :cond_3d
    :goto_3d
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_66

    .line 531
    and-long v0, p0, v6

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    .line 535
    :cond_53
    :goto_53
    return-wide p0

    .line 520
    :cond_54
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_27

    .line 521
    and-long/2addr p0, v2

    goto :goto_27

    .line 526
    :cond_5d
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3d

    .line 527
    and-long/2addr p0, v8

    goto :goto_3d

    .line 532
    :cond_66
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_53

    .line 533
    and-long/2addr p0, v6

    goto :goto_53
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "content"    # Landroid/text/Spannable;

    .prologue
    .line 273
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 274
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 275
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .registers 3
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "states"    # I

    .prologue
    .line 422
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 423
    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 424
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 425
    :cond_1b
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_24

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 426
    :cond_24
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # Ljava/lang/Object;
    .param p2, "on"    # I
    .param p3, "lock"    # I

    .prologue
    const/4 v2, 0x0

    .line 251
    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_7

    move p3, v2

    .line 263
    .end local p3    # "lock":I
    :cond_6
    :goto_6
    return p3

    .restart local p3    # "lock":I
    :cond_7
    move-object v1, p0

    .line 255
    check-cast v1, Landroid/text/Spanned;

    .line 256
    .local v1, "sp":Landroid/text/Spanned;
    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 258
    .local v0, "flag":I
    const v3, 0x4000011

    if-eq v0, v3, :cond_6

    .line 260
    if-eqz v0, :cond_17

    move p3, p2

    .line 261
    goto :goto_6

    :cond_17
    move p3, v2

    .line 263
    goto :goto_6
.end method

.method public static final getMetaState(J)I
    .registers 8
    .param p0, "state"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "result":I
    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1f

    .line 461
    or-int/lit16 v0, v0, 0x100

    .line 466
    :cond_c
    :goto_c
    const-wide/16 v2, 0x200

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_29

    .line 467
    or-int/lit16 v0, v0, 0x200

    .line 472
    :cond_15
    :goto_15
    const-wide/16 v2, 0x400

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_33

    .line 473
    or-int/lit16 v0, v0, 0x400

    .line 478
    :cond_1e
    :goto_1e
    return v0

    .line 462
    :cond_1f
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    .line 463
    or-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 468
    :cond_29
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    .line 469
    or-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 474
    :cond_33
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    .line 475
    or-int/lit8 v0, v0, 0x4

    goto :goto_1e
.end method

.method public static final getMetaState(JI)I
    .registers 11
    .param p0, "state"    # J
    .param p2, "meta"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 490
    packed-switch p2, :pswitch_data_40

    :pswitch_8
    move v0, v2

    .line 507
    :cond_9
    :goto_9
    return v0

    .line 492
    :pswitch_a
    const-wide/16 v4, 0x100

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 493
    const-wide/16 v4, 0x1

    and-long/2addr v4, p0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_9

    :cond_1a
    move v0, v2

    .line 494
    goto :goto_9

    .line 497
    :pswitch_1c
    const-wide/16 v4, 0x200

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 498
    const-wide/16 v4, 0x2

    and-long/2addr v4, p0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_9

    :cond_2c
    move v0, v2

    .line 499
    goto :goto_9

    .line 502
    :pswitch_2e
    const-wide/16 v4, 0x400

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 503
    const-wide/16 v4, 0x4

    and-long/2addr v4, p0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_9

    :cond_3e
    move v0, v2

    .line 504
    goto :goto_9

    .line 490
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1c
        :pswitch_8
        :pswitch_2e
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x800

    .line 160
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 200
    sparse-switch p1, :sswitch_data_24

    .line 214
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 202
    :sswitch_7
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 205
    :sswitch_e
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 208
    :sswitch_15
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 211
    :sswitch_1c
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 200
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_e
        0x4 -> :sswitch_15
        0x800 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .registers 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 233
    .local v0, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v2

    if-ne v2, v1, :cond_14

    .line 235
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v2

    or-int/2addr v0, v2

    .line 237
    :cond_14
    const/16 v2, 0x800

    if-ne v2, p1, :cond_1f

    .line 240
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_1d

    .line 246
    :goto_1c
    return v1

    .line 244
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c

    .line 246
    :cond_1f
    int-to-long v2, v0

    invoke-static {v2, v3, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result v1

    goto :goto_1c
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 182
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 184
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    .line 186
    :cond_14
    return v0
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .registers 20
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 542
    const/16 v2, 0x3b

    move/from16 v0, p2

    if-eq v0, v2, :cond_c

    const/16 v2, 0x3c

    move/from16 v0, p2

    if-ne v0, v2, :cond_27

    .line 543
    :cond_c
    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide/16 v8, 0x100

    const-wide v10, 0x10000000000L

    const-wide/high16 v12, 0x1000000000000L

    const-wide v14, 0x100000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    .line 557
    .end local p0    # "state":J
    :cond_26
    :goto_26
    return-wide p0

    .line 547
    .restart local p0    # "state":J
    :cond_27
    const/16 v2, 0x39

    move/from16 v0, p2

    if-eq v0, v2, :cond_39

    const/16 v2, 0x3a

    move/from16 v0, p2

    if-eq v0, v2, :cond_39

    const/16 v2, 0x4e

    move/from16 v0, p2

    if-ne v0, v2, :cond_54

    .line 549
    :cond_39
    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide/16 v8, 0x200

    const-wide v10, 0x20000000000L

    const-wide/high16 v12, 0x2000000000000L

    const-wide v14, 0x200000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_26

    .line 553
    :cond_54
    const/16 v2, 0x3f

    move/from16 v0, p2

    if-ne v0, v2, :cond_26

    .line 554
    const/4 v5, 0x4

    const-wide v6, 0x4040400000404L

    const-wide/16 v8, 0x400

    const-wide v10, 0x40000000000L

    const-wide/high16 v12, 0x4000000000000L

    const-wide v14, 0x400000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_26
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .registers 20
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 580
    const/16 v2, 0x3b

    move/from16 v0, p2

    if-eq v0, v2, :cond_c

    const/16 v2, 0x3c

    move/from16 v0, p2

    if-ne v0, v2, :cond_27

    .line 581
    :cond_c
    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide v8, 0x10000000000L

    const-wide/high16 v10, 0x1000000000000L

    const-wide v12, 0x100000000L

    move-wide/from16 v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    .line 595
    .end local p0    # "state":J
    :cond_26
    :goto_26
    return-wide p0

    .line 585
    .restart local p0    # "state":J
    :cond_27
    const/16 v2, 0x39

    move/from16 v0, p2

    if-eq v0, v2, :cond_39

    const/16 v2, 0x3a

    move/from16 v0, p2

    if-eq v0, v2, :cond_39

    const/16 v2, 0x4e

    move/from16 v0, p2

    if-ne v0, v2, :cond_54

    .line 587
    :cond_39
    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide v8, 0x20000000000L

    const-wide/high16 v10, 0x2000000000000L

    const-wide v12, 0x200000000L

    move-wide/from16 v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_26

    .line 591
    :cond_54
    const/16 v2, 0x3f

    move/from16 v0, p2

    if-ne v0, v2, :cond_26

    .line 592
    const/4 v5, 0x4

    const-wide v6, 0x4040400000404L

    const-wide v8, 0x40000000000L

    const-wide/high16 v10, 0x4000000000000L

    const-wide v12, 0x400000000L

    move-wide/from16 v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_26
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 283
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 292
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static press(JIJJJJJ)J
    .registers 17
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "locked"    # J
    .param p7, "pressed"    # J
    .param p9, "released"    # J
    .param p11, "used"    # J

    .prologue
    .line 562
    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 573
    :cond_8
    :goto_8
    return-wide p0

    .line 564
    :cond_9
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 565
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    or-long p0, v0, p5

    goto :goto_8

    .line 566
    :cond_1a
    and-long v0, p0, p11

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 568
    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    .line 569
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_8

    .line 571
    :cond_2f
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_8
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;

    .prologue
    const v4, 0x4000011

    const v3, 0x1000011

    const/4 v2, 0x0

    .line 346
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 348
    .local v0, "state":I
    if-ne v0, v3, :cond_e

    .line 358
    :cond_d
    :goto_d
    return-void

    .line 350
    :cond_e
    const v1, 0x2000011

    if-ne v0, v1, :cond_17

    .line 351
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d

    .line 352
    :cond_17
    const v1, 0x3000011

    if-eq v0, v1, :cond_d

    .line 354
    if-ne v0, v4, :cond_22

    .line 355
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_d

    .line 357
    :cond_22
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .registers 16
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "pressed"    # J
    .param p7, "released"    # J
    .param p9, "used"    # J
    .param p11, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 600
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 610
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 613
    :cond_f
    :goto_f
    return-wide p0

    .line 602
    :pswitch_10
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 603
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_f

    .line 604
    :cond_1d
    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 605
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_f

    .line 600
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, "current":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 412
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 415
    :cond_13
    :goto_13
    return-void

    .line 405
    :pswitch_14
    const v1, 0x3000011

    if-ne v0, v1, :cond_1d

    .line 406
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_13

    .line 407
    :cond_1d
    const v1, 0x1000011

    if-ne v0, v1, :cond_13

    .line 408
    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_13

    .line 403
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 318
    .local v0, "current":I
    const v1, 0x4000011

    if-ne v0, v1, :cond_c

    .line 319
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 320
    :cond_c
    return-void
.end method

.method public static resetLockedMeta(J)J
    .registers 6
    .param p0, "state"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 433
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 434
    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    .line 436
    :cond_f
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 437
    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    .line 439
    :cond_1c
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 440
    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    .line 442
    :cond_29
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "content"    # Landroid/text/Spannable;

    .prologue
    .line 309
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 310
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 145
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .prologue
    const/4 v2, 0x0

    .line 365
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 366
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .prologue
    .line 374
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 375
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .registers 9
    .param p1, "state"    # J
    .param p3, "which"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 623
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 624
    const-wide v0, -0x1010100000102L

    and-long/2addr p1, v0

    .line 626
    :cond_13
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 627
    const-wide v0, -0x2020200000203L

    and-long/2addr p1, v0

    .line 629
    :cond_24
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_35

    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    .line 630
    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    .line 632
    :cond_35
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .prologue
    .line 418
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 419
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 326
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_9

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_f

    .line 327
    :cond_9
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 342
    :goto_e
    return v0

    .line 331
    :cond_f
    const/16 v1, 0x39

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_21

    .line 333
    :cond_1b
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_e

    .line 337
    :cond_21
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2b

    .line 338
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_e

    .line 342
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 381
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_9

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_f

    .line 382
    :cond_9
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 397
    :goto_e
    return v0

    .line 386
    :cond_f
    const/16 v1, 0x39

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_1b

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_21

    .line 388
    :cond_1b
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_e

    .line 392
    :cond_21
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2b

    .line 393
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_e

    .line 397
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method
