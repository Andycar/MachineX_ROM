.class Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment;
    .param p2, "x1"    # Lcom/android/settings/users/AppRestrictionsFragment$1;

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    .param p2, "rhs"    # Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .prologue
    .line 737
    iget-object v2, p1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "lhsLabel":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "rhsLabel":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 733
    check-cast p1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;->compare(Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;)I

    move-result v0

    return v0
.end method
