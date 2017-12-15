.class Landroid/media/Tokenizer$TagTokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagTokenizer"
.end annotation


# instance fields
.field private mAnnotation:Ljava/lang/String;

.field private mAtAnnotation:Z

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/Tokenizer;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private yield_tag()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 287
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 288
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v3

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/media/Tokenizer$OnTokenListener;->onEnd(Ljava/lang/String;)V

    .line 314
    :goto_1b
    return-void

    .line 289
    :cond_1c
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_62

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 292
    :try_start_30
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v4

    .line 293
    .local v4, "timestampMs":J
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Landroid/media/Tokenizer$OnTokenListener;->onTimeStamp(J)V
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_1b

    .line 294
    .end local v4    # "timestampMs":J
    :catch_40
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Tokenizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid timestamp tag: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 298
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_62
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string v6, "\\s+"

    const-string v7, " "

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 299
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 300
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 302
    :cond_80
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 303
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 306
    :cond_9a
    const/4 v0, 0x0

    .line 307
    .local v0, "classes":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 308
    .local v1, "dotAt":I
    if-ltz v1, :cond_bb

    .line 309
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\\."

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    .line 312
    :cond_bb
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v3

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-interface {v3, v6, v0, v7}, Landroid/media/Tokenizer$OnTokenListener;->onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b
.end method


# virtual methods
.method public start()Landroid/media/Tokenizer$TokenizerPhase;
    .registers 2

    .prologue
    .line 246
    const-string v0, ""

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    .line 248
    return-object p0
.end method

.method public tokenize()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 253
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-nez v2, :cond_a

    .line 254
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # operator++ for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$108(Landroid/media/Tokenizer;)I

    .line 255
    :cond_a
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_91

    .line 261
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-nez v2, :cond_34

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_d2

    .line 262
    :cond_34
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "parts":[Ljava/lang/String;
    :goto_4a
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    iget-object v4, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v4}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v4

    aget-object v5, v1, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "part":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    # += operator for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->access$112(Landroid/media/Tokenizer;I)I

    .line 270
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-eqz v2, :cond_ea

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 277
    .end local v0    # "part":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_91
    :goto_91
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    .line 279
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_d1

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_d1

    .line 280
    invoke-direct {p0}, Landroid/media/Tokenizer$TagTokenizer;->yield_tag()V

    .line 281
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$500(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    # setter for: Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->access$202(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;

    .line 282
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # operator++ for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$108(Landroid/media/Tokenizer;)I

    .line 284
    :cond_d1
    return-void

    .line 264
    :cond_d2
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\t\u000c >]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "parts":[Ljava/lang/String;
    goto/16 :goto_4a

    .line 273
    .restart local v0    # "part":Ljava/lang/String;
    :cond_ea
    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    goto :goto_91
.end method
