.class public Landroid/sec/clipboard/util/StringHelper;
.super Ljava/lang/Object;
.source "StringHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/StringHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Landroid/sec/clipboard/util/StringHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/StringHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/StringHelper;->instance:Landroid/sec/clipboard/util/StringHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/sec/clipboard/util/StringHelper;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Landroid/sec/clipboard/util/StringHelper;->instance:Landroid/sec/clipboard/util/StringHelper;

    return-object v0
.end method

.method public static getUniqueString()Ljava/lang/StringBuffer;
    .registers 5

    .prologue
    const/16 v4, 0xe

    .line 49
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 51
    .local v1, "rand":Ljava/util/Random;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, "oCalendar":Ljava/util/Calendar;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 53
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 58
    return-object v2
.end method
