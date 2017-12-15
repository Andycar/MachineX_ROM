.class Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionGroupInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    .line 596
    return-void
.end method


# virtual methods
.method public final compare(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I
    .registers 7
    .param p1, "a"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "b"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 598
    iget v2, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->flags:I

    iget v3, p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->flags:I

    xor-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    .line 599
    iget v2, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_12

    .line 604
    :cond_11
    :goto_11
    return v0

    :cond_12
    move v0, v1

    .line 599
    goto :goto_11

    .line 601
    :cond_14
    iget v2, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    iget v3, p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    if-eq v2, v3, :cond_22

    .line 602
    iget v2, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    iget v3, p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->priority:I

    if-gt v2, v3, :cond_11

    move v0, v1

    goto :goto_11

    .line 604
    :cond_22
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_11
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 593
    check-cast p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->compare(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I

    move-result v0

    return v0
.end method
