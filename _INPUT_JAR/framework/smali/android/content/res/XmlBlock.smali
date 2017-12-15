.class final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;
.source "XmlBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mNative:J

.field private mOpen:Z

.field private mOpenCount:I

.field final mStrings:Landroid/content/res/StringBlock;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;J)V
    .registers 8
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "xmlBlock"    # J

    .prologue
    const/4 v0, 0x1

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 533
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 524
    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 525
    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 526
    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 527
    return-void
.end method

.method public constructor <init>([B)V
    .registers 7
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 533
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 40
    array-length v0, p1

    invoke-static {p1, v4, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 41
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v4}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 42
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 533
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 46
    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 47
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 48
    return-void
.end method

.method static synthetic access$008(Landroid/content/res/XmlBlock;)I
    .registers 3
    .param p0, "x0"    # Landroid/content/res/XmlBlock;

    .prologue
    .line 35
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return v0
.end method

.method static synthetic access$100(J)I
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(JLjava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(JI)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(J)I
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(J)I
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(J)I
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/res/XmlBlock;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/res/XmlBlock;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method static synthetic access$200(J)I
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(J)I
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(JI)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(JI)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(J)I
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(JI)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(JI)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(JI)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    move-result v0

    return v0
.end method

.method private decOpenCountLocked()V
    .registers 3

    .prologue
    .line 60
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 61
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    if-nez v0, :cond_1c

    .line 62
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    .line 63
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_1c

    .line 64
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    .line 67
    :cond_1c
    return-void
.end method

.method private static final native nativeCreate([BII)J
.end method

.method private static final native nativeCreateParseState(J)J
.end method

.method private static final native nativeDestroy(J)V
.end method

.method private static final native nativeDestroyParseState(J)V
.end method

.method private static final native nativeGetAttributeCount(J)I
.end method

.method private static final native nativeGetAttributeData(JI)I
.end method

.method private static final native nativeGetAttributeDataType(JI)I
.end method

.method private static final native nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static final native nativeGetAttributeName(JI)I
.end method

.method private static final native nativeGetAttributeNamespace(JI)I
.end method

.method private static final native nativeGetAttributeResource(JI)I
.end method

.method private static final native nativeGetAttributeStringValue(JI)I
.end method

.method private static final native nativeGetClassAttribute(J)I
.end method

.method private static final native nativeGetIdAttribute(J)I
.end method

.method private static final native nativeGetLineNumber(J)I
.end method

.method static final native nativeGetName(J)I
.end method

.method private static final native nativeGetNamespace(J)I
.end method

.method private static final native nativeGetStringBlock(J)J
.end method

.method private static final native nativeGetStyleAttribute(J)I
.end method

.method private static final native nativeGetText(J)I
.end method

.method static final native nativeNext(J)I
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    if-eqz v0, :cond_b

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 54
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    .line 56
    :cond_b
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

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
    .line 514
    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    .line 515
    return-void
.end method

.method public newParser()Landroid/content/res/XmlResourceParser;
    .registers 5

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 72
    new-instance v0, Landroid/content/res/XmlBlock$Parser;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeCreateParseState(J)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    monitor-exit p0

    .line 74
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_15

    .line 75
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method
