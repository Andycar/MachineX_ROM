.class Landroid/media/CCParser;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CCParser$CCData;,
        Landroid/media/CCParser$CCMemory;,
        Landroid/media/CCParser$CCLineBuilder;,
        Landroid/media/CCParser$PAC;,
        Landroid/media/CCParser$StyleCode;,
        Landroid/media/CCParser$DisplayListener;
    }
.end annotation


# static fields
.field private static final AOF:I = 0x22

.field private static final AON:I = 0x23

.field private static final BS:I = 0x21

.field private static final CR:I = 0x2d

.field private static final DEBUG:Z

.field private static final DER:I = 0x24

.field private static final EDM:I = 0x2c

.field private static final ENM:I = 0x2e

.field private static final EOC:I = 0x2f

.field private static final FON:I = 0x28

.field private static final INVALID:I = -0x1

.field public static final MAX_COLS:I = 0x20

.field public static final MAX_ROWS:I = 0xf

.field private static final MODE_PAINT_ON:I = 0x1

.field private static final MODE_POP_ON:I = 0x3

.field private static final MODE_ROLL_UP:I = 0x2

.field private static final MODE_TEXT:I = 0x4

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final RCL:I = 0x20

.field private static final RDC:I = 0x29

.field private static final RTD:I = 0x2b

.field private static final RU2:I = 0x25

.field private static final RU3:I = 0x26

.field private static final RU4:I = 0x27

.field private static final TAG:Ljava/lang/String; = "CCParser"

.field private static final TR:I = 0x2a

.field private static final TS:C = '\u00a0'


# instance fields
.field private mDisplay:Landroid/media/CCParser$CCMemory;

.field private final mListener:Landroid/media/CCParser$DisplayListener;

.field private mMode:I

.field private mNonDisplay:Landroid/media/CCParser$CCMemory;

.field private mRollUpSize:I

.field private mTextMem:Landroid/media/CCParser$CCMemory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 121
    const-string v0, "CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/CCParser;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/media/CCParser$DisplayListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/CCParser$DisplayListener;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/CCParser;->mMode:I

    .line 156
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/CCParser;->mRollUpSize:I

    .line 158
    new-instance v0, Landroid/media/CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    .line 159
    new-instance v0, Landroid/media/CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    .line 160
    new-instance v0, Landroid/media/CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/CCParser;->mTextMem:Landroid/media/CCParser$CCMemory;

    .line 163
    iput-object p1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    .line 164
    return-void
.end method

.method private getMemory()Landroid/media/CCParser$CCMemory;
    .registers 4

    .prologue
    .line 192
    iget v0, p0, Landroid/media/CCParser;->mMode:I

    packed-switch v0, :pswitch_data_2c

    .line 203
    const-string v0, "CCParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecoginized mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/CCParser;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    :goto_22
    return-object v0

    .line 194
    :pswitch_23
    iget-object v0, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    goto :goto_22

    .line 198
    :pswitch_26
    iget-object v0, p0, Landroid/media/CCParser;->mTextMem:Landroid/media/CCParser$CCMemory;

    goto :goto_22

    .line 201
    :pswitch_29
    iget-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    goto :goto_22

    .line 192
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method private handleCtrlCode(Landroid/media/CCParser$CCData;)Z
    .registers 7
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x2

    .line 262
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getCtrlCode()I

    move-result v0

    .line 263
    .local v0, "ctrlCode":I
    packed-switch v0, :pswitch_data_80

    .line 329
    :pswitch_b
    const/4 v1, 0x0

    .line 333
    :cond_c
    :goto_c
    return v1

    .line 266
    :pswitch_d
    iput v2, p0, Landroid/media/CCParser;->mMode:I

    goto :goto_c

    .line 269
    :pswitch_10
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->bs()V

    goto :goto_c

    .line 272
    :pswitch_18
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->der()V

    goto :goto_c

    .line 277
    :pswitch_20
    add-int/lit8 v2, v0, -0x23

    iput v2, p0, Landroid/media/CCParser;->mRollUpSize:I

    .line 279
    iget v2, p0, Landroid/media/CCParser;->mMode:I

    if-eq v2, v4, :cond_32

    .line 280
    iget-object v2, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->erase()V

    .line 281
    iget-object v2, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->erase()V

    .line 284
    :cond_32
    iput v4, p0, Landroid/media/CCParser;->mMode:I

    goto :goto_c

    .line 287
    :pswitch_35
    const-string v2, "CCParser"

    const-string v3, "Flash On"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 291
    :pswitch_3d
    iput v1, p0, Landroid/media/CCParser;->mMode:I

    goto :goto_c

    .line 294
    :pswitch_40
    iput v3, p0, Landroid/media/CCParser;->mMode:I

    .line 295
    iget-object v2, p0, Landroid/media/CCParser;->mTextMem:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->erase()V

    goto :goto_c

    .line 298
    :pswitch_48
    iput v3, p0, Landroid/media/CCParser;->mMode:I

    goto :goto_c

    .line 302
    :pswitch_4b
    iget-object v2, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->erase()V

    .line 303
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    goto :goto_c

    .line 306
    :pswitch_54
    iget v2, p0, Landroid/media/CCParser;->mMode:I

    if-ne v2, v4, :cond_69

    .line 307
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v2

    iget v3, p0, Landroid/media/CCParser;->mRollUpSize:I

    invoke-virtual {v2, v3}, Landroid/media/CCParser$CCMemory;->rollUp(I)V

    .line 311
    :goto_61
    iget v2, p0, Landroid/media/CCParser;->mMode:I

    if-ne v2, v4, :cond_c

    .line 312
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    goto :goto_c

    .line 309
    :cond_69
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->cr()V

    goto :goto_61

    .line 317
    :pswitch_71
    iget-object v2, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v2}, Landroid/media/CCParser$CCMemory;->erase()V

    goto :goto_c

    .line 321
    :pswitch_77
    invoke-direct {p0}, Landroid/media/CCParser;->swapMemory()V

    .line 323
    iput v2, p0, Landroid/media/CCParser;->mMode:I

    .line 324
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    goto :goto_c

    .line 263
    :pswitch_data_80
    .packed-switch 0x20
        :pswitch_d
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_18
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_35
        :pswitch_3d
        :pswitch_40
        :pswitch_48
        :pswitch_4b
        :pswitch_54
        :pswitch_71
        :pswitch_77
    .end packed-switch
.end method

.method private handleDisplayableChars(Landroid/media/CCParser$CCData;)Z
    .registers 5
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->isDisplayableChar()Z

    move-result v1

    if-nez v1, :cond_9

    .line 210
    const/4 v0, 0x0

    .line 224
    :cond_8
    :goto_8
    return v0

    .line 214
    :cond_9
    # invokes: Landroid/media/CCParser$CCData;->isExtendedChar()Z
    invoke-static {p1}, Landroid/media/CCParser$CCData;->access$000(Landroid/media/CCParser$CCData;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 215
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->bs()V

    .line 218
    :cond_16
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    .line 220
    iget v1, p0, Landroid/media/CCParser;->mMode:I

    if-eq v1, v0, :cond_2a

    iget v1, p0, Landroid/media/CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 221
    :cond_2a
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    goto :goto_8
.end method

.method private handleMidRowCode(Landroid/media/CCParser$CCData;)Z
    .registers 4
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getMidRow()Landroid/media/CCParser$StyleCode;

    move-result-object v0

    .line 229
    .local v0, "m":Landroid/media/CCParser$StyleCode;
    if-eqz v0, :cond_f

    .line 230
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/CCParser$CCMemory;->writeMidRowCode(Landroid/media/CCParser$StyleCode;)V

    .line 231
    const/4 v1, 0x1

    .line 233
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private handlePACCode(Landroid/media/CCParser$CCData;)Z
    .registers 6
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getPAC()Landroid/media/CCParser$PAC;

    move-result-object v0

    .line 239
    .local v0, "pac":Landroid/media/CCParser$PAC;
    if-eqz v0, :cond_21

    .line 240
    iget v1, p0, Landroid/media/CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 241
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/CCParser$PAC;->getRow()I

    move-result v2

    iget v3, p0, Landroid/media/CCParser;->mRollUpSize:I

    # invokes: Landroid/media/CCParser$CCMemory;->moveBaselineTo(II)V
    invoke-static {v1, v2, v3}, Landroid/media/CCParser$CCMemory;->access$100(Landroid/media/CCParser$CCMemory;II)V

    .line 243
    :cond_18
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/CCParser$CCMemory;->writePAC(Landroid/media/CCParser$PAC;)V

    .line 244
    const/4 v1, 0x1

    .line 247
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method private handleTabOffsets(Landroid/media/CCParser$CCData;)Z
    .registers 4
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getTabOffset()I

    move-result v0

    .line 253
    .local v0, "tabs":I
    if-lez v0, :cond_f

    .line 254
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/CCParser$CCMemory;->tab(I)V

    .line 255
    const/4 v1, 0x1

    .line 258
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private swapMemory()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    .line 345
    .local v0, "temp":Landroid/media/CCParser$CCMemory;
    iget-object v1, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    iput-object v1, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    .line 346
    iput-object v0, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    .line 347
    return-void
.end method

.method private updateDisplay()V
    .registers 4

    .prologue
    .line 337
    iget-object v1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    if-eqz v1, :cond_15

    .line 338
    iget-object v1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    invoke-interface {v1}, Landroid/media/CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 339
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    iget-object v2, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v2, v0}, Landroid/media/CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    .line 341
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_15
    return-void
.end method


# virtual methods
.method parse([B)V
    .registers 6
    .param p1, "data"    # [B

    .prologue
    .line 167
    invoke-static {p1}, Landroid/media/CCParser$CCData;->fromByteArray([B)[Landroid/media/CCParser$CCData;

    move-result-object v0

    .line 169
    .local v0, "ccData":[Landroid/media/CCParser$CCData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 170
    sget-boolean v2, Landroid/media/CCParser;->DEBUG:Z

    if-eqz v2, :cond_17

    .line 171
    const-string v2, "CCParser"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/CCParser$CCData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_17
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleCtrlCode(Landroid/media/CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_37

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleTabOffsets(Landroid/media/CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_37

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handlePACCode(Landroid/media/CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_37

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleMidRowCode(Landroid/media/CCParser$CCData;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 169
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 181
    :cond_3a
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleDisplayableChars(Landroid/media/CCParser$CCData;)Z

    goto :goto_37

    .line 183
    :cond_40
    return-void
.end method
