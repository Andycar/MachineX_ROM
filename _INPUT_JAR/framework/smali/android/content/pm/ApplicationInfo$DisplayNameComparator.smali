.class public Landroid/content/pm/ApplicationInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    .line 850
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 851
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .registers 8
    .param p1, "aa"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "ab"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 854
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 855
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_a

    .line 856
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 858
    :cond_a
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 859
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_14

    .line 860
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 863
    :cond_14
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 847
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
