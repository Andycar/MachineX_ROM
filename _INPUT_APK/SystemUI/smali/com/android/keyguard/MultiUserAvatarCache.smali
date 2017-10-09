.class public Lcom/android/keyguard/MultiUserAvatarCache;
.super Ljava/lang/Object;
.source "MultiUserAvatarCache.java"


# static fields
.field private static sInstance:Lcom/android/keyguard/MultiUserAvatarCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/android/keyguard/MultiUserAvatarCache;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/keyguard/MultiUserAvatarCache;->sInstance:Lcom/android/keyguard/MultiUserAvatarCache;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/keyguard/MultiUserAvatarCache;

    invoke-direct {v0}, Lcom/android/keyguard/MultiUserAvatarCache;-><init>()V

    sput-object v0, Lcom/android/keyguard/MultiUserAvatarCache;->sInstance:Lcom/android/keyguard/MultiUserAvatarCache;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/keyguard/MultiUserAvatarCache;->sInstance:Lcom/android/keyguard/MultiUserAvatarCache;

    return-object v0
.end method


# virtual methods
.method public clear(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public get(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public put(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/MultiUserAvatarCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
