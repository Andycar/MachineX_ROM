.class final Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 730
    check-cast p1, Landroid/content/IntentFilter;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .line 731
    .local v0, "q1":I
    check-cast p2, Landroid/content/IntentFilter;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    .line 732
    .local v1, "q2":I
    if-le v0, v1, :cond_10

    const/4 v2, -0x1

    :goto_f
    return v2

    :cond_10
    if-ge v0, v1, :cond_14

    const/4 v2, 0x1

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    goto :goto_f
.end method
