.class public final enum Lcom/sec/android/app/sysscope/service/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/sec/android/app/sysscope/service/f;

.field public static final enum b:Lcom/sec/android/app/sysscope/service/f;

.field public static final enum c:Lcom/sec/android/app/sysscope/service/f;

.field public static final enum d:Lcom/sec/android/app/sysscope/service/f;

.field public static final enum e:Lcom/sec/android/app/sysscope/service/f;

.field public static final enum f:Lcom/sec/android/app/sysscope/service/f;

.field private static final synthetic i:[Lcom/sec/android/app/sysscope/service/f;


# instance fields
.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/app/sysscope/service/f;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/sysscope/service/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    new-instance v0, Lcom/sec/android/app/sysscope/service/f;

    const-string v1, "ADB_RUNNING_AS_ROOT"

    const v2, 0x10001

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/app/sysscope/service/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/f;->b:Lcom/sec/android/app/sysscope/service/f;

    new-instance v0, Lcom/sec/android/app/sysscope/service/f;

    const-string v1, "PARTITION_TAMPERED"

    const v2, 0x20001

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/sysscope/service/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/f;->c:Lcom/sec/android/app/sysscope/service/f;

    new-instance v0, Lcom/sec/android/app/sysscope/service/f;

    const-string v1, "ROOT_PROCESS_FOUND"

    const/16 v2, 0x3001

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/android/app/sysscope/service/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/f;->d:Lcom/sec/android/app/sysscope/service/f;

    new-instance v0, Lcom/sec/android/app/sysscope/service/f;

    const-string v1, "DANGEROUS_FILE_DETECTED"

    const v2, 0x40001

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/android/app/sysscope/service/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/f;->e:Lcom/sec/android/app/sysscope/service/f;

    new-instance v0, Lcom/sec/android/app/sysscope/service/f;

    const-string v1, "NOT_OFFICIAL_BINARY"

    const/4 v2, 0x5

    const v3, 0x50001

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sysscope/service/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/f;->f:Lcom/sec/android/app/sysscope/service/f;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/sysscope/service/f;

    sget-object v1, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sysscope/service/f;->b:Lcom/sec/android/app/sysscope/service/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sysscope/service/f;->c:Lcom/sec/android/app/sysscope/service/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sysscope/service/f;->d:Lcom/sec/android/app/sysscope/service/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/sysscope/service/f;->e:Lcom/sec/android/app/sysscope/service/f;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sysscope/service/f;->f:Lcom/sec/android/app/sysscope/service/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sysscope/service/f;->i:[Lcom/sec/android/app/sysscope/service/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/f;->h:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sysscope/service/f;->g:I

    return-void
.end method

.method public static a(I)Lcom/sec/android/app/sysscope/service/f;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sysscope/service/f;->values()[Lcom/sec/android/app/sysscope/service/f;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/sec/android/app/sysscope/service/f;->g:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/f;
    .locals 1

    const-class v0, Lcom/sec/android/app/sysscope/service/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/f;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sysscope/service/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->i:[Lcom/sec/android/app/sysscope/service/f;

    invoke-virtual {v0}, [Lcom/sec/android/app/sysscope/service/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sysscope/service/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sysscope/service/f;->g:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/f;->h:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/f;->h:Ljava/lang/String;

    return-object v0
.end method
