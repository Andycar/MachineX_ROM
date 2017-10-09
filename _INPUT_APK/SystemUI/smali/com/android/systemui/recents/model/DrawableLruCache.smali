.class Lcom/android/systemui/recents/model/DrawableLruCache;
.super Lcom/android/systemui/recents/model/KeyStoreLruCache;
.source "DrawableLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/recents/model/KeyStoreLruCache",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/KeyStoreLruCache;-><init>(I)V

    .line 27
    return-void
.end method
