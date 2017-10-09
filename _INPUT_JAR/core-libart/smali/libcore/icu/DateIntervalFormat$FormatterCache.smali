.class Llibcore/icu/DateIntervalFormat$FormatterCache;
.super Llibcore/util/BasicLruCache;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormatterCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 54
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Llibcore/icu/DateIntervalFormat$FormatterCache;->entryEvicted(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method protected entryEvicted(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 58
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    # invokes: Llibcore/icu/DateIntervalFormat;->destroyDateIntervalFormat(J)V
    invoke-static {v0, v1}, Llibcore/icu/DateIntervalFormat;->access$000(J)V

    .line 59
    return-void
.end method
