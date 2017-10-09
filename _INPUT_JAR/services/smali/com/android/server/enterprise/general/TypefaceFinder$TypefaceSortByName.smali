.class public Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/TypefaceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypefaceSortByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/enterprise/general/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/general/TypefaceFinder;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/general/TypefaceFinder;)V
    .registers 2

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;->this$0:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/enterprise/general/Typeface;Lcom/android/server/enterprise/general/Typeface;)I
    .registers 5
    .param p1, "o1"    # Lcom/android/server/enterprise/general/Typeface;
    .param p2, "o2"    # Lcom/android/server/enterprise/general/Typeface;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 210
    check-cast p1, Lcom/android/server/enterprise/general/Typeface;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/enterprise/general/Typeface;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;->compare(Lcom/android/server/enterprise/general/Typeface;Lcom/android/server/enterprise/general/Typeface;)I

    move-result v0

    return v0
.end method
