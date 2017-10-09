.class Lcom/android/settings/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortingKey"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 445
    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 487
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 440
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/HashMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ZonePicker$MyComparator;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;",
            "Ljava/util/HashMap",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .local p1, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    .local p2, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 452
    iget-object v7, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 453
    .local v3, "value1":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 454
    .local v4, "value2":Ljava/lang/Object;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 455
    const-string v7, "name"

    iget-object v8, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 456
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    .line 458
    .local v2, "sCollator":Ljava/text/Collator;
    const/4 v0, 0x0

    .line 459
    .local v0, "alabel":Ljava/lang/String;
    const/4 v1, 0x0

    .line 460
    .local v1, "blabel":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_0
    if-eqz v4, :cond_1

    .line 464
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    :cond_1
    if-nez v0, :cond_3

    .line 483
    .end local v0    # "alabel":Ljava/lang/String;
    .end local v1    # "blabel":Ljava/lang/String;
    .end local v2    # "sCollator":Ljava/text/Collator;
    .end local v3    # "value1":Ljava/lang/Object;
    :cond_2
    :goto_0
    return v5

    .line 468
    .restart local v0    # "alabel":Ljava/lang/String;
    .restart local v1    # "blabel":Ljava/lang/String;
    .restart local v2    # "sCollator":Ljava/text/Collator;
    .restart local v3    # "value1":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_4

    move v5, v6

    goto :goto_0

    .line 470
    :cond_4
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 477
    .end local v0    # "alabel":Ljava/lang/String;
    .end local v1    # "blabel":Ljava/lang/String;
    .end local v2    # "sCollator":Ljava/text/Collator;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 478
    invoke-direct {p0, v4}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 479
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v6

    .line 480
    goto :goto_0

    .line 483
    :cond_7
    check-cast v3, Ljava/lang/Comparable;

    .end local v3    # "value1":Ljava/lang/Object;
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_0
.end method
