.class Lcom/android/systemui/recents/model/StringLruCache;
.super Lcom/android/systemui/recents/model/KeyStoreLruCache;
.source "StringLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/recents/model/KeyStoreLruCache",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/KeyStoreLruCache;-><init>(I)V

    .line 25
    return-void
.end method
