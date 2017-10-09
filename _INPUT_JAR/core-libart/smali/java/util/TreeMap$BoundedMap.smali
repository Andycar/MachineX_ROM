.class final Ljava/util/TreeMap$BoundedMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$BoundedMap$BoundedKeySet;,
        Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;,
        Ljava/util/TreeMap$BoundedMap$BoundedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient ascending:Z

.field private transient entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedEntrySet;"
        }
    .end annotation
.end field

.field private final transient from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient fromBound:Ljava/util/TreeMap$Bound;

.field private transient keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedKeySet;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;

.field private final transient to:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient toBound:Ljava/util/TreeMap$Bound;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .registers 10
    .param p2, "ascending"    # Z
    .param p4, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p6, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1103
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p3, "from":Ljava/lang/Object;, "TK;"
    .local p5, "to":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1108
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p4, v0, :cond_32

    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p6, v0, :cond_32

    .line 1109
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p3, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3b

    .line 1110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_32
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p4, v0, :cond_46

    .line 1113
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1118
    :cond_3b
    :goto_3b
    iput-boolean p2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    .line 1119
    iput-object p3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    .line 1120
    iput-object p4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    .line 1121
    iput-object p5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    .line 1122
    iput-object p6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    .line 1123
    return-void

    .line 1114
    :cond_46
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq p6, v0, :cond_3b

    .line 1115
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p5, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_3b
.end method

.method static synthetic access$1000(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .registers 5
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/util/TreeMap$Bound;
    .param p3, "x3"    # Ljava/util/TreeMap$Bound;

    .prologue
    .line 1096
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;
    .registers 3
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;
    .param p1, "x1"    # Z

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/TreeMap$BoundedMap;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;

    .prologue
    .line 1096
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    return v0
.end method

.method static synthetic access$900(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Ljava/util/TreeMap$BoundedMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;
    .registers 5
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1192
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-eqz v0, :cond_d

    .end local p1    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_c
    return-object p1

    .restart local p1    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_d
    const/4 p1, 0x0

    goto :goto_c
.end method

.method private endpoint(Z)Ljava/util/TreeMap$Node;
    .registers 6
    .param p1, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v0, 0x0

    .line 1244
    iget-boolean v1, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-ne v1, p1, :cond_46

    .line 1245
    sget-object v1, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Bound:[I

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_88

    .line 1256
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1247
    :pswitch_18
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_27

    .line 1258
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_1e
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v1

    .line 1273
    :goto_26
    return-object v1

    .line 1247
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_27
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_1e

    .line 1250
    :pswitch_30
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1251
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_1e

    .line 1253
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_3b
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1254
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_1e

    .line 1260
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_46
    sget-object v1, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Bound:[I

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_92

    .line 1271
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1262
    :pswitch_59
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_68

    .line 1273
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_5f
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v1

    goto :goto_26

    .line 1262
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_68
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_5f

    .line 1265
    :pswitch_71
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1266
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_5f

    .line 1268
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_7c
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1269
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_5f

    .line 1245
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_18
        :pswitch_30
        :pswitch_3b
    .end packed-switch

    .line 1260
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_59
        :pswitch_71
        :pswitch_7c
    .end packed-switch
.end method

.method private findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;
    .registers 8
    .param p2, "relation"    # Ljava/util/TreeMap$Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1297
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-boolean v3, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    invoke-virtual {p2, v3}, Ljava/util/TreeMap$Relation;->forOrder(Z)Ljava/util/TreeMap$Relation;

    move-result-object p2

    .line 1298
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    .line 1299
    .local v1, "fromBoundForCheck":Ljava/util/TreeMap$Bound;
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    .line 1301
    .local v2, "toBoundForCheck":Ljava/util/TreeMap$Bound;
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq v3, v4, :cond_30

    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    if-eq p2, v3, :cond_18

    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    if-ne p2, v3, :cond_30

    .line 1302
    :cond_18
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1303
    .local v0, "comparison":I
    if-gtz v0, :cond_2e

    .line 1304
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    .line 1305
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne v3, v4, :cond_61

    .line 1306
    sget-object p2, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    .line 1311
    :cond_2e
    :goto_2e
    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    .line 1314
    .end local v0    # "comparison":I
    :cond_30
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-eq v3, v4, :cond_56

    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    if-eq p2, v3, :cond_3e

    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    if-ne p2, v3, :cond_56

    .line 1315
    :cond_3e
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1316
    .restart local v0    # "comparison":I
    if-ltz v0, :cond_54

    .line 1317
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    .line 1318
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne v3, v4, :cond_66

    .line 1319
    sget-object p2, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    .line 1324
    :cond_54
    :goto_54
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    .line 1327
    .end local v0    # "comparison":I
    :cond_56
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    move-result-object v3

    return-object v3

    .line 1307
    .restart local v0    # "comparison":I
    :cond_61
    if-gez v0, :cond_2e

    .line 1308
    sget-object p2, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    goto :goto_2e

    .line 1320
    :cond_66
    if-lez v0, :cond_54

    .line 1321
    sget-object p2, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    goto :goto_54
.end method

.method private isInBounds(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1157
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    return v0
.end method

.method private isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .registers 7
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 1165
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p2, v1, :cond_12

    .line 1166
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_22

    .line 1185
    :cond_11
    :goto_11
    return v0

    .line 1169
    :cond_12
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p2, v1, :cond_22

    .line 1170
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_11

    .line 1175
    :cond_22
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v1, :cond_34

    .line 1176
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_11

    .line 1185
    :cond_32
    const/4 v0, 0x1

    goto :goto_11

    .line 1179
    :cond_34
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    if-ne p3, v1, :cond_32

    .line 1180
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v1, v1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_32

    goto :goto_11
.end method

.method private outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;

    .prologue
    .line 1471
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/util/TreeMap$Bound;->leftCap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/util/TreeMap$Bound;->rightCap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;
    .registers 16
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p4, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1433
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v0, :cond_a

    .line 1434
    move-object v9, p1

    .line 1435
    .local v9, "fromTmp":Ljava/lang/Object;, "TK;"
    move-object v7, p2

    .line 1436
    .local v7, "fromBoundTmp":Ljava/util/TreeMap$Bound;
    move-object p1, p3

    .line 1437
    move-object p2, p4

    .line 1438
    move-object p3, v9

    .line 1439
    move-object p4, v7

    .line 1447
    .end local v7    # "fromBoundTmp":Ljava/util/TreeMap$Bound;
    .end local v9    # "fromTmp":Ljava/lang/Object;, "TK;"
    :cond_a
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p2, v0, :cond_28

    .line 1448
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    .line 1449
    iget-object p2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    .line 1457
    :cond_12
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    if-ne p4, v0, :cond_40

    .line 1458
    iget-object p3, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    .line 1459
    iget-object p4, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    .line 1467
    :cond_1a
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 1451
    :cond_28
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    if-ne p2, v0, :cond_3d

    sget-object v8, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1452
    .local v8, "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    :goto_2e
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v8, v0}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1453
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v8, v0}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1451
    .end local v8    # "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    :cond_3d
    iget-object v8, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    goto :goto_2e

    .line 1461
    :cond_40
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    if-ne p4, v0, :cond_55

    sget-object v10, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1462
    .local v10, "toBoundToCheck":Ljava/util/TreeMap$Bound;
    :goto_46
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1463
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1461
    .end local v10    # "toBoundToCheck":Ljava/util/TreeMap$Bound;
    :cond_55
    iget-object v10, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    goto :goto_46
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1354
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1367
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1368
    .local v0, "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-eqz v1, :cond_b

    .line 1371
    .end local v0    # "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_a
    return-object v0

    .restart local v0    # "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_a
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1138
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1401
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v2, :cond_19

    const/4 v2, 0x1

    :goto_9
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1397
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_9
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_15
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1383
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    .line 1384
    .local v0, "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    goto :goto_4
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1212
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1213
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_d

    .line 1214
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1216
    :cond_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1340
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1344
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1345
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1420
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "toExclusive":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v2, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v0, v1, p1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1415
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_c

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1416
    .local v0, "toBound":Ljava/util/TreeMap$Bound;
    :goto_4
    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, v1, v2, p1, v0}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1

    .line 1415
    .end local v0    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_c
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_4
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1096
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1358
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1362
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1363
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v0, 0x1

    .line 1130
    invoke-direct {p0, v0}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1388
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1220
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1232
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1233
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_d

    .line 1234
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1236
    :cond_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v1

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1335
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1336
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1392
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    .line 1393
    .local v0, "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    goto :goto_4
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1205
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_c

    .line 1206
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 1208
    :cond_c
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v1, v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    return-object v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 1225
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_c

    .line 1226
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 1228
    :cond_c
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    # invokes: Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    invoke-static {v1, v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1143
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1145
    :cond_f
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1149
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1126
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->count(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    .local p2, "toExclusive":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1405
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_d

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1406
    .local v0, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_4
    if-eqz p4, :cond_10

    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1407
    .local v1, "toBound":Ljava/util/TreeMap$Bound;
    :goto_8
    invoke-direct {p0, p1, v0, p3, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v2

    return-object v2

    .line 1405
    .end local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    .end local v1    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_d
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_4

    .line 1406
    .restart local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_10
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_8
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1096
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1424
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_c

    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 1425
    .local v0, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_4
    const/4 v1, 0x0

    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    move-result-object v1

    return-object v1

    .line 1424
    .end local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_c
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_4
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1096
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1644
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    goto :goto_13
.end method
