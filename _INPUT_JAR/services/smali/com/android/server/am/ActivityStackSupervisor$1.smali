.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/ActivityManager$RunningTaskInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 2

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 11
    .param p1, "lhs"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "rhs"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 1138
    iget-wide v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1139
    .local v0, "time1":J
    iget-wide v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1140
    .local v2, "time2":J
    sub-long v4, v0, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    .line 1141
    const/4 v4, -0x1

    .line 1146
    :goto_d
    return v4

    .line 1143
    :cond_e
    sub-long v4, v0, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_16

    .line 1144
    const/4 v4, 0x1

    goto :goto_d

    .line 1146
    :cond_16
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1135
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$1;->compare(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    return v0
.end method
