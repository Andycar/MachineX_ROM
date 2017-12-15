.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$1;,
        Landroid/renderscript/Font$Style;,
        Landroid/renderscript/Font$FontFamily;
    }
.end annotation


# static fields
.field private static sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMonoNames:[Ljava/lang/String;

.field private static final sSansNames:[Ljava/lang/String;

.field private static final sSerifNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sans-serif"

    aput-object v1, v0, v3

    const-string v1, "arial"

    aput-object v1, v0, v4

    const-string v1, "helvetica"

    aput-object v1, v0, v5

    const-string/jumbo v1, "tahoma"

    aput-object v1, v0, v6

    const-string/jumbo v1, "verdana"

    aput-object v1, v0, v7

    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "serif"

    aput-object v1, v0, v3

    const-string/jumbo v1, "times"

    aput-object v1, v0, v4

    const-string/jumbo v1, "times new roman"

    aput-object v1, v0, v5

    const-string/jumbo v1, "palatino"

    aput-object v1, v0, v6

    const-string v1, "georgia"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "baskerville"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "goudy"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fantasy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cursive"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ITC Stone Serif"

    aput-object v2, v0, v1

    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    .line 59
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "monospace"

    aput-object v1, v0, v3

    const-string v1, "courier"

    aput-object v1, v0, v4

    const-string v1, "courier new"

    aput-object v1, v0, v5

    const-string v1, "monaco"

    aput-object v1, v0, v6

    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    .line 130
    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    .line 131
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 153
    return-void
.end method

.method private static addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .registers 4
    .param p0, "family"    # Landroid/renderscript/Font$FontFamily;

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 97
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_12
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .registers 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "familyName"    # Ljava/lang/String;
    .param p3, "fontStyle"    # Landroid/renderscript/Font$Style;
    .param p4, "pointSize"    # F

    .prologue
    .line 239
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "fontPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {p0, p1, v1, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v2

    return-object v2
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .registers 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 184
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 185
    .local v1, "mgr":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 187
    .local v0, "dpi":I
    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide v2

    .line 188
    .local v2, "fontId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_30

    .line 189
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create font from asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :cond_30
    new-instance v4, Landroid/renderscript/Font;

    invoke-direct {v4, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 192
    .local v4, "rsFont":Landroid/renderscript/Font;
    return-object v4
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .registers 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "pointSize"    # F

    .prologue
    .line 176
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .registers 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 161
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 162
    .local v0, "dpi":I
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)J

    move-result-wide v2

    .line 164
    .local v2, "fontId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2c

    .line 165
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create font from file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_2c
    new-instance v1, Landroid/renderscript/Font;

    invoke-direct {v1, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 169
    .local v1, "rsFont":Landroid/renderscript/Font;
    return-object v1
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .registers 20
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "pointSize"    # F

    .prologue
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 202
    const/4 v9, 0x0

    .line 204
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1b
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_5a

    move-result-object v9

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 211
    .local v5, "dpi":I
    const-wide/16 v10, 0x0

    .line 212
    .local v10, "fontId":J
    instance-of v2, v9, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_76

    .line 213
    check-cast v9, Landroid/content/res/AssetManager$AssetInputStream;

    .end local v9    # "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v6

    .local v6, "asset":J
    move-object/from16 v2, p0

    move/from16 v4, p3

    .line 214
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J

    move-result-wide v10

    .line 219
    const-wide/16 v14, 0x0

    cmp-long v2, v10, v14

    if-nez v2, :cond_7e

    .line 220
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to create font from resource "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    .end local v5    # "dpi":I
    .end local v6    # "asset":J
    .end local v10    # "fontId":J
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_5a
    move-exception v8

    .line 206
    .local v8, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to open resource "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "dpi":I
    .restart local v10    # "fontId":J
    :cond_76
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Unsupported asset stream created"

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v6    # "asset":J
    :cond_7e
    new-instance v12, Landroid/renderscript/Font;

    move-object/from16 v0, p0

    invoke-direct {v12, v10, v11, v0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 223
    .local v12, "rsFont":Landroid/renderscript/Font;
    return-object v12
.end method

.method static getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .registers 5
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # Landroid/renderscript/Font$Style;

    .prologue
    .line 134
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Font$FontFamily;

    .line 135
    .local v0, "family":Landroid/renderscript/Font$FontFamily;
    if-eqz v0, :cond_15

    .line 136
    sget-object v1, Landroid/renderscript/Font$1;->$SwitchMap$android$renderscript$Font$Style:[I

    invoke-virtual {p1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 148
    :cond_15
    const-string v1, "DroidSans.ttf"

    :goto_17
    return-object v1

    .line 138
    :pswitch_18
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    goto :goto_17

    .line 140
    :pswitch_1b
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    goto :goto_17

    .line 142
    :pswitch_1e
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    goto :goto_17

    .line 144
    :pswitch_21
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    goto :goto_17

    .line 136
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method private static initFontFamilyMap()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 104
    new-instance v1, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v1, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 105
    .local v1, "sansFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 106
    const-string v3, "Roboto-Regular.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 107
    const-string v3, "Roboto-Bold.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 108
    const-string v3, "Roboto-Italic.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 109
    const-string v3, "Roboto-BoldItalic.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 110
    invoke-static {v1}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 112
    new-instance v2, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v2, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 113
    .local v2, "serifFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 114
    const-string v3, "NotoSerif-Regular.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 115
    const-string v3, "NotoSerif-Bold.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 116
    const-string v3, "NotoSerif-Italic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 117
    const-string v3, "NotoSerif-BoldItalic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 118
    invoke-static {v2}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 120
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v0, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 121
    .local v0, "monoFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 122
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 123
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 124
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 125
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 126
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 127
    return-void
.end method
