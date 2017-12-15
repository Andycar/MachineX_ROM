.class Landroid/media/Tokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Tokenizer$OnTokenListener;,
        Landroid/media/Tokenizer$TagTokenizer;,
        Landroid/media/Tokenizer$DataTokenizer;,
        Landroid/media/Tokenizer$TokenizerPhase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tokenizer"


# instance fields
.field private mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

.field private mHandledLen:I

.field private mLine:Ljava/lang/String;

.field private mListener:Landroid/media/Tokenizer$OnTokenListener;

.field private mPhase:Landroid/media/Tokenizer$TokenizerPhase;

.field private mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;


# direct methods
.method constructor <init>(Landroid/media/Tokenizer$OnTokenListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/Tokenizer$OnTokenListener;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Landroid/media/Tokenizer$DataTokenizer;

    invoke-direct {v0, p0}, Landroid/media/Tokenizer$DataTokenizer;-><init>(Landroid/media/Tokenizer;)V

    iput-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    .line 319
    new-instance v0, Landroid/media/Tokenizer$TagTokenizer;

    invoke-direct {v0, p0}, Landroid/media/Tokenizer$TagTokenizer;-><init>(Landroid/media/Tokenizer;)V

    iput-object v0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    .line 320
    invoke-virtual {p0}, Landroid/media/Tokenizer;->reset()V

    .line 321
    iput-object p1, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    .line 322
    return-void
.end method

.method static synthetic access$000(Landroid/media/Tokenizer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/Tokenizer;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/Tokenizer;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/Tokenizer;

    .prologue
    .line 179
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/Tokenizer;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/Tokenizer;
    .param p1, "x1"    # I

    .prologue
    .line 179
    iput p1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return p1
.end method

.method static synthetic access$108(Landroid/media/Tokenizer;)I
    .registers 3
    .param p0, "x0"    # Landroid/media/Tokenizer;

    .prologue
    .line 179
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return v0
.end method

.method static synthetic access$112(Landroid/media/Tokenizer;I)I
    .registers 3
    .param p0, "x0"    # Landroid/media/Tokenizer;
    .param p1, "x1"    # I

    .prologue
    .line 179
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;
    .registers 2
    .param p0, "x0"    # Landroid/media/Tokenizer;
    .param p1, "x1"    # Landroid/media/Tokenizer$TokenizerPhase;

    .prologue
    .line 179
    iput-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p1
.end method

.method static synthetic access$300(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .registers 2
    .param p0, "x0"    # Landroid/media/Tokenizer;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/Tokenizer;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .registers 2
    .param p0, "x0"    # Landroid/media/Tokenizer;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object v0
.end method


# virtual methods
.method reset()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    .line 326
    return-void
.end method

.method tokenize(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 329
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    .line 330
    iput-object p1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    .line 331
    :goto_5
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    iget-object v1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 332
    iget-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->tokenize()V

    goto :goto_5

    .line 335
    :cond_15
    iget-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    instance-of v0, v0, Landroid/media/Tokenizer$TagTokenizer;

    if-nez v0, :cond_20

    .line 337
    iget-object v0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    invoke-interface {v0}, Landroid/media/Tokenizer$OnTokenListener;->onLineEnd()V

    .line 339
    :cond_20
    return-void
.end method
