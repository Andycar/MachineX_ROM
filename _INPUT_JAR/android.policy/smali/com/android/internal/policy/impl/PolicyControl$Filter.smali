.class Lcom/android/internal/policy/impl/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PolicyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "*"

.field private static final APPS:Ljava/lang/String; = "apps"


# instance fields
.field private final mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    .line 192
    iput-object p2, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    .line 193
    return-void
.end method

.method private dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "=("

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 226
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_22

    .line 227
    if-lez v0, :cond_16

    const/16 v2, 0x2c

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 228
    :cond_16
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 230
    :cond_22
    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 231
    return-void
.end method

.method private onBlacklist(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private onWhitelist(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static parse(Ljava/lang/String;)Lcom/android/internal/policy/impl/PolicyControl$Filter;
    .registers 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 243
    if-nez p0, :cond_5

    const/4 v6, 0x0

    .line 255
    :goto_4
    return-object v6

    .line 244
    :cond_5
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 245
    .local v5, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 246
    .local v1, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_17
    if-ge v2, v3, :cond_3b

    aget-object v4, v0, v2

    .line 247
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 248
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_37

    .line 249
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 252
    :cond_37
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 255
    .end local v4    # "token":Ljava/lang/String;
    :cond_3b
    new-instance v6, Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-direct {v6, v5, v1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    goto :goto_4
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 218
    const-string v0, "Filter["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    const-string v0, "whitelist"

    iget-object v1, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 220
    const-string v0, "blacklist"

    iget-object v1, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 221
    return-void
.end method

.method matches(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    if-nez p1, :cond_5

    .line 202
    :cond_4
    :goto_4
    return v1

    .line 197
    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v2, :cond_32

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_32

    move v0, v2

    .line 199
    .local v0, "isApp":Z
    :goto_10
    if-eqz v0, :cond_1c

    iget-object v3, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v4, "apps"

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 200
    :cond_1c
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/internal/policy/impl/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v3, "apps"

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v1, v2

    goto :goto_4

    .end local v0    # "isApp":Z
    :cond_32
    move v0, v1

    .line 197
    goto :goto_10

    .line 202
    .restart local v0    # "isApp":Z
    :cond_34
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v1

    goto :goto_4
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 235
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 236
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
