.class Lcom/android/server/firewall/StringFilter$StartsWithFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartsWithFilter"
.end annotation


# instance fields
.field private final mFilterValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .registers 4
    .param p1, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    .line 174
    iput-object p2, p0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;->mFilterValue:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;->mFilterValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
