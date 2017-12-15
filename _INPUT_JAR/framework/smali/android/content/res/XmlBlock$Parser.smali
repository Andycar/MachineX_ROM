.class final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parser"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field mParseState:J

.field private mStarted:Z

.field final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    .registers 7
    .param p2, "parseState"    # J
    .param p4, "block"    # Landroid/content/res/XmlBlock;

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 501
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 502
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 503
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 80
    iput-wide p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 81
    iput-object p4, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 82
    # operator++ for: Landroid/content/res/XmlBlock;->mOpenCount:I
    invoke-static {p4}, Landroid/content/res/XmlBlock;->access$008(Landroid/content/res/XmlBlock;)I

    .line 83
    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 469
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v1

    .line 470
    :try_start_5
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    .line 471
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->access$1500(J)V

    .line 472
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 473
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    # invokes: Landroid/content/res/XmlBlock;->decOpenCountLocked()V
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1600(Landroid/content/res/XmlBlock;)V

    .line 475
    :cond_19
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 480
    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .registers 7
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 377
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    .line 380
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1a

    .line 382
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 384
    :goto_17
    return v1

    .line 382
    :cond_18
    const/4 v1, 0x0

    goto :goto_17

    :cond_1a
    move v1, p2

    .line 384
    goto :goto_17
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 325
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, "idx":I
    if-ltz v0, :cond_c

    .line 327
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result p3

    .line 329
    .end local p3    # "defaultValue":Z
    :cond_c
    return p3
.end method

.method public getAttributeCount()I
    .registers 3

    .prologue
    .line 199
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$600(J)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public getAttributeFloatValue(IF)F
    .registers 7
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 440
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    .line 443
    .local v0, "t":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 444
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 447
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 358
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, "idx":I
    if-ltz v0, :cond_c

    .line 360
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result p3

    .line 362
    .end local p3    # "defaultValue":F
    :cond_c
    return p3
.end method

.method public getAttributeIntValue(II)I
    .registers 7
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 420
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    .line 423
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_14

    .line 425
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result p2

    .line 427
    .end local p2    # "defaultValue":I
    :cond_14
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 341
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "idx":I
    if-ltz v0, :cond_c

    .line 343
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result p3

    .line 345
    .end local p3    # "defaultValue":I
    :cond_c
    return p3
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .registers 8
    .param p1, "idx"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 367
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    .line 368
    .local v0, "t":I
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v1

    .line 369
    .local v1, "v":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1b

    .line 370
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v2, v2, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v1

    .line 373
    .end local v1    # "v":I
    :cond_1b
    return v1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 317
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 318
    .local v0, "idx":I
    if-ltz v0, :cond_c

    .line 319
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result p4

    .line 321
    .end local p4    # "defaultValue":I
    :cond_c
    return p4
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 186
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$500(JI)I

    move-result v0

    .line 188
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNameResource(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 312
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I
    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$1100(JI)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 179
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$400(JI)I

    move-result v0

    .line 181
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    const-string v1, ""

    goto :goto_14

    .line 183
    :cond_1b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeResourceValue(II)I
    .registers 7
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 387
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    .line 390
    .local v0, "t":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 391
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result p2

    .line 393
    .end local p2    # "defaultValue":I
    :cond_f
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 333
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, "idx":I
    if-ltz v0, :cond_c

    .line 335
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result p3

    .line 337
    .end local p3    # "defaultValue":I
    :cond_c
    return p3
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 216
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .registers 7
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 430
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    .line 433
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_14

    .line 435
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result p2

    .line 437
    .end local p2    # "defaultValue":I
    :cond_14
    return p2
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 350
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "idx":I
    if-ltz v0, :cond_c

    .line 352
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result p3

    .line 354
    .end local p3    # "defaultValue":I
    :cond_c
    return p3
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 8
    .param p1, "index"    # I

    .prologue
    .line 202
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I
    invoke-static {v4, v5, p1}, Landroid/content/res/XmlBlock;->access$700(JI)I

    move-result v0

    .line 204
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v3, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v3, v3, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v3, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    :goto_14
    return-object v3

    .line 207
    :cond_15
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v4, v5, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v1

    .line 208
    .local v1, "t":I
    if-nez v1, :cond_27

    .line 209
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_27
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v4, v5, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result v2

    .line 213
    .local v2, "v":I
    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_14
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, "idx":I
    if-ltz v0, :cond_d

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getClassAttribute()Ljava/lang/String;
    .registers 5

    .prologue
    .line 455
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->access$1300(J)I

    move-result v0

    .line 456
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 137
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 150
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 95
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 101
    :cond_9
    :goto_9
    return v0

    .line 98
    :cond_a
    const-string v1, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 101
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .registers 5

    .prologue
    .line 451
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->access$1200(J)I

    move-result v0

    .line 452
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getIdAttributeResourceValue(I)I
    .registers 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 461
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 3

    .prologue
    .line 147
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$200(J)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 175
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetName(J)I

    move-result v0

    .line 176
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 5

    .prologue
    .line 171
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->access$300(J)I

    move-result v0

    .line 172
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const-string v1, ""

    goto :goto_14
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .registers 4
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getPooledString(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 483
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleAttribute()I
    .registers 3

    .prologue
    .line 465
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->access$1400(J)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 143
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetText(J)I
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->access$100(J)I

    move-result v0

    .line 144
    .local v0, "id":I
    if-ltz v0, :cond_15

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getTextCharacters([I)[C
    .registers 7
    .param p1, "holderForStartAndLength"    # [I

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "txt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 162
    .local v0, "chars":[C
    if-eqz v1, :cond_1e

    .line 163
    aput v4, p1, v4

    .line 164
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, p1, v2

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [C

    .line 166
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 168
    :cond_1e
    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 238
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    if-nez v3, :cond_a

    .line 239
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    move v0, v1

    .line 266
    :cond_9
    :goto_9
    return v0

    .line 242
    :cond_a
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_14

    move v0, v2

    .line 243
    goto :goto_9

    .line 245
    :cond_14
    iget-wide v4, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v4, v5}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v0

    .line 246
    .local v0, "ev":I
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_26

    .line 247
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 248
    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 250
    :cond_26
    packed-switch v0, :pswitch_data_3c

    .line 258
    :goto_29
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 259
    if-ne v0, v2, :cond_9

    .line 264
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    goto :goto_9

    .line 252
    :pswitch_31
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    goto :goto_29

    .line 255
    :pswitch_38
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_29

    .line 250
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_31
        :pswitch_38
    .end packed-switch
.end method

.method public nextTag()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 300
    .local v0, "eventType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 301
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 303
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    .line 304
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 308
    :cond_35
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 275
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    .line 276
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG to read next text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 280
    :cond_26
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 281
    .local v0, "eventType":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_54

    .line 282
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 284
    if-eq v0, v4, :cond_58

    .line 285
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 290
    .end local v1    # "result":Ljava/lang/String;
    :cond_54
    if-ne v0, v4, :cond_59

    .line 291
    const-string v1, ""

    :cond_58
    return-object v1

    .line 293
    :cond_59
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1e

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_12
    if-eqz p3, :cond_43

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 272
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_43
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 90
    :cond_a
    return-void

    .line 89
    :cond_b
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_a

    .line 92
    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 488
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_6

    .line 489
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->filePath:Ljava/lang/String;

    .line 491
    :cond_6
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public twGetAttributeDataType(I)I
    .registers 4
    .param p1, "idx"    # I

    .prologue
    .line 403
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    return v0
.end method

.method public twGetForceAttributIntValue(II)I
    .registers 7
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 413
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$800(JI)I

    move-result v0

    .line 414
    .local v0, "t":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 415
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I
    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->access$900(JI)I

    move-result p2

    .line 417
    .end local p2    # "defaultValue":I
    :cond_f
    return p2
.end method
