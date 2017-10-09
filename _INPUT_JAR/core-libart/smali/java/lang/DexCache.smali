.class final Ljava/lang/DexCache;
.super Ljava/lang/Object;
.source "DexCache.java"


# instance fields
.field private volatile dex:Lcom/android/dex/Dex;

.field private dexFile:J

.field literals:[Ljava/lang/String;

.field location:Ljava/lang/String;

.field resolvedFields:[Ljava/lang/reflect/ArtField;

.field resolvedMethods:[Ljava/lang/reflect/ArtMethod;

.field resolvedTypes:[Ljava/lang/Class;

.field strings:[Ljava/lang/String;

.field z_padding:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getDexNative()Lcom/android/dex/Dex;
.end method


# virtual methods
.method getDex()Lcom/android/dex/Dex;
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    .line 86
    .local v0, "result":Lcom/android/dex/Dex;
    if-nez v0, :cond_10

    .line 87
    monitor-enter p0

    .line 88
    :try_start_5
    iget-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    .line 89
    if-nez v0, :cond_f

    .line 90
    invoke-direct {p0}, Ljava/lang/DexCache;->getDexNative()Lcom/android/dex/Dex;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/DexCache;->dex:Lcom/android/dex/Dex;

    .line 92
    :cond_f
    monitor-exit p0

    .line 94
    :cond_10
    return-object v0

    .line 92
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method
