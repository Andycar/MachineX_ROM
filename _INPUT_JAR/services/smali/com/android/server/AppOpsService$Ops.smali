.class public final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field public final isPrivileged:Z

.field public final isPrivilegedCredible:Z

.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uid"    # I
    .param p3, "_isPrivileged"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 123
    iput p2, p0, Lcom/android/server/AppOpsService$Ops;->uid:I

    .line 124
    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uid"    # I
    .param p3, "_isPrivileged"    # Z
    .param p4, "_isPrivilegedCredible"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 129
    iput p2, p0, Lcom/android/server/AppOpsService$Ops;->uid:I

    .line 130
    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    .line 131
    iput-boolean p4, p0, Lcom/android/server/AppOpsService$Ops;->isPrivilegedCredible:Z

    .line 132
    return-void
.end method
