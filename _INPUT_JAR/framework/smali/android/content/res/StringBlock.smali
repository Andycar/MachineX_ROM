.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(JZ)V
    .registers 5
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 478
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 479
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 483
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 55
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 56
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 60
    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 47
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 48
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 52
    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v2, 0xa

    .line 357
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 359
    .local v0, "len":I
    if-eqz p2, :cond_1e

    if-eq p2, v0, :cond_1e

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1e

    .line 360
    add-int/lit8 p2, p2, -0x1

    :goto_14
    if-lez p2, :cond_1e

    .line 361
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3c

    .line 367
    :cond_1e
    if-eqz p3, :cond_36

    if-eq p3, v0, :cond_36

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_36

    .line 368
    add-int/lit8 p3, p3, 0x1

    :goto_2c
    if-ge p3, v0, :cond_36

    .line 369
    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3f

    .line 375
    :cond_36
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 376
    return-void

    .line 360
    :cond_3c
    add-int/lit8 p2, p2, -0x1

    goto :goto_14

    .line 368
    :cond_3f
    add-int/lit8 p3, p3, 0x1

    goto :goto_2c
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .registers 22
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;

    .prologue
    .line 167
    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_6

    .line 305
    .end local p1    # "str":Ljava/lang/String;
    :goto_5
    return-object p1

    .line 170
    .restart local p1    # "str":Ljava/lang/String;
    :cond_6
    new-instance v2, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v2, "buffer":Landroid/text/SpannableString;
    const/4 v4, 0x0

    .line 172
    .local v4, "i":I
    :goto_e
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_2c4

    .line 173
    aget v12, p2, v4

    .line 178
    .local v12, "type":I
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_37

    .line 179
    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 303
    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x3

    .line 304
    goto :goto_e

    .line 182
    :cond_37
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_57

    .line 183
    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_34

    .line 186
    :cond_57
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_76

    .line 187
    new-instance v14, Landroid/text/style/UnderlineSpan;

    invoke-direct {v14}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_34

    .line 190
    :cond_76
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_98

    .line 191
    new-instance v14, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v15, "monospace"

    invoke-direct {v14, v15}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_34

    .line 194
    :cond_98
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_ba

    .line 195
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const/high16 v15, 0x3fa00000    # 1.25f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 198
    :cond_ba
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_dd

    .line 199
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const v15, 0x3f4ccccd    # 0.8f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 202
    :cond_dd
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_fd

    .line 203
    new-instance v14, Landroid/text/style/SubscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 206
    :cond_fd
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_11d

    .line 207
    new-instance v14, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 210
    :cond_11d
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_13d

    .line 211
    new-instance v14, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v14}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 214
    :cond_13d
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_15b

    .line 215
    new-instance v14, Landroid/text/style/BulletSpan;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_34

    .line 217
    :cond_15b
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_178

    .line 218
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x12

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 222
    :cond_178
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v14, v15, v12}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, "tag":Ljava/lang/String;
    const-string v14, "font;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24f

    .line 227
    const-string v14, ";height="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_1a8

    .line 229
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 230
    .local v8, "size":I
    new-instance v14, Landroid/content/res/StringBlock$Height;

    invoke-direct {v14, v8}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 234
    .end local v8    # "size":I
    :cond_1a8
    const-string v14, ";size="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 235
    if-eqz v9, :cond_1cd

    .line 236
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 237
    .restart local v8    # "size":I
    new-instance v14, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v8, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 242
    .end local v8    # "size":I
    :cond_1cd
    const-string v14, ";fgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 243
    if-eqz v9, :cond_1ed

    .line 244
    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 249
    :cond_1ed
    const-string v14, ";color="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 250
    if-eqz v9, :cond_20d

    .line 251
    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 256
    :cond_20d
    const-string v14, ";bgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    if-eqz v9, :cond_22d

    .line 258
    const/4 v14, 0x0

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 263
    :cond_22d
    const-string v14, ";face="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    if-eqz v9, :cond_34

    .line 265
    new-instance v14, Landroid/text/style/TypefaceSpan;

    invoke-direct {v14, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 269
    .end local v9    # "sub":Ljava/lang/String;
    :cond_24f
    const-string v14, "a;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_279

    .line 272
    const-string v14, ";href="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 273
    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_34

    .line 274
    new-instance v14, Landroid/text/style/URLSpan;

    invoke-direct {v14, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_34

    .line 278
    .end local v9    # "sub":Ljava/lang/String;
    :cond_279
    const-string v14, "annotation;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 279
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 282
    .local v6, "len":I
    const/16 v14, 0x3b

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .local v10, "t":I
    :goto_28b
    if-ge v10, v6, :cond_34

    .line 283
    const/16 v14, 0x3d

    invoke-virtual {v11, v14, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 284
    .local v3, "eq":I
    if-ltz v3, :cond_34

    .line 288
    const/16 v14, 0x3b

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 289
    .local v7, "next":I
    if-gez v7, :cond_29e

    .line 290
    move v7, v6

    .line 293
    :cond_29e
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v11, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, "value":Ljava/lang/String;
    new-instance v14, Landroid/text/Annotation;

    invoke-direct {v14, v5, v13}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 282
    move v10, v7

    goto :goto_28b

    .line 305
    .end local v3    # "eq":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "next":I
    .end local v10    # "t":I
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "value":Ljava/lang/String;
    :cond_2c4
    new-instance p1, Landroid/text/SpannedString;

    .end local p1    # "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .registers 12
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 323
    const/high16 v6, -0x1000000

    .line 325
    .local v6, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 326
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 327
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 328
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "name":Ljava/lang/String;
    const-string v0, "color"

    const-string v3, "android"

    invoke-virtual {v9, v8, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 330
    .local v7, "colorRes":I
    if-eqz v7, :cond_37

    .line 331
    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 332
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_33

    .line 333
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 346
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    :goto_32
    return-object v0

    .line 335
    .restart local v4    # "colors":Landroid/content/res/ColorStateList;
    .restart local v7    # "colorRes":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_33
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 343
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_37
    :goto_37
    if-eqz p1, :cond_44

    .line 344
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_32

    .line 339
    :cond_3f
    invoke-static {p0}, Landroid/graphics/Color;->getHtmlColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_37

    .line 346
    :cond_44
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    goto :goto_32
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, "start":I
    if-gez v1, :cond_8

    .line 381
    const/4 v2, 0x0

    .line 390
    :goto_7
    return-object v2

    .line 384
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 385
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 387
    .local v0, "end":I
    if-gez v0, :cond_1a

    .line 388
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 390
    :cond_1a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 146
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_c

    .line 147
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 150
    :cond_c
    return-void

    .line 146
    :catchall_d
    move-exception v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_17

    .line 147
    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_17
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "idx"    # I

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_d

    .line 65
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v1, v7, p1

    .line 66
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_35

    .line 67
    monitor-exit p0

    .line 138
    :goto_c
    return-object v1

    .line 69
    .end local v1    # "res":Ljava/lang/CharSequence;
    :cond_d
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v7, :cond_20

    .line 70
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 71
    .restart local v1    # "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_35

    .line 72
    monitor-exit p0

    goto :goto_c

    .line 139
    .end local v1    # "res":Ljava/lang/CharSequence;
    :catchall_1d
    move-exception v7

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v7

    .line 75
    :cond_20
    :try_start_20
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    .line 76
    .local v0, "num":I
    iget-boolean v7, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v7, :cond_b0

    const/16 v7, 0xfa

    if-le v0, v7, :cond_b0

    .line 77
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 82
    .end local v0    # "num":I
    :cond_35
    :goto_35
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "str":Ljava/lang/String;
    move-object v1, v2

    .line 84
    .restart local v1    # "res":Ljava/lang/CharSequence;
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v3

    .line 87
    .local v3, "style":[I
    if-eqz v3, :cond_166

    .line 88
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v7, :cond_4f

    .line 89
    new-instance v7, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v7}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 94
    :cond_4f
    const/4 v5, 0x0

    .local v5, "styleIndex":I
    :goto_50
    array-length v7, v3

    if-ge v5, v7, :cond_160

    .line 95
    aget v4, v3, v5

    .line 97
    .local v4, "styleId":I
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-eq v4, v7, :cond_ad

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static {v7}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v7

    if-ne v4, v7, :cond_b5

    .line 94
    :cond_ad
    :goto_ad
    add-int/lit8 v5, v5, 0x3

    goto :goto_50

    .line 79
    .end local v1    # "res":Ljava/lang/CharSequence;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "style":[I
    .end local v4    # "styleId":I
    .end local v5    # "styleIndex":I
    .restart local v0    # "num":I
    :cond_b0
    new-array v7, v0, [Ljava/lang/CharSequence;

    iput-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    goto :goto_35

    .line 107
    .end local v0    # "num":I
    .restart local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "style":[I
    .restart local v4    # "styleId":I
    .restart local v5    # "styleIndex":I
    :cond_b5
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "styleTag":Ljava/lang/String;
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 110
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_ad

    .line 111
    :cond_c9
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 112
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_ad

    .line 113
    :cond_d7
    const-string/jumbo v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 114
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_ad

    .line 115
    :cond_e6
    const-string/jumbo v7, "tt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    .line 116
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_ad

    .line 117
    :cond_f5
    const-string v7, "big"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_103

    .line 118
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_ad

    .line 119
    :cond_103
    const-string/jumbo v7, "small"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_112

    .line 120
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_ad

    .line 121
    :cond_112
    const-string/jumbo v7, "sup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 122
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_ad

    .line 123
    :cond_121
    const-string/jumbo v7, "sub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 124
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_ad

    .line 125
    :cond_131
    const-string/jumbo v7, "strike"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_141

    .line 126
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_ad

    .line 127
    :cond_141
    const-string v7, "li"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_150

    .line 128
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_ad

    .line 129
    :cond_150
    const-string/jumbo v7, "marquee"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 130
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static {v7, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_ad

    .line 134
    .end local v4    # "styleId":I
    .end local v6    # "styleTag":Ljava/lang/String;
    :cond_160
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v2, v3, v7}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    .end local v5    # "styleIndex":I
    :cond_166
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_171

    iget-object v7, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v1, v7, p1

    .line 138
    :goto_16e
    monitor-exit p0

    goto/16 :goto_c

    .line 137
    :cond_171
    iget-object v7, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_176
    .catchall {:try_start_20 .. :try_end_176} :catchall_1d

    goto :goto_16e
.end method
