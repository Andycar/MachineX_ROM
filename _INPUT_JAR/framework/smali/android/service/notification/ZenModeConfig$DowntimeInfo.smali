.class public Landroid/service/notification/ZenModeConfig$DowntimeInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DowntimeInfo"
.end annotation


# instance fields
.field public endHour:I

.field public endMinute:I

.field public startHour:I

.field public startMinute:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 602
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    if-nez v2, :cond_6

    .line 604
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 603
    check-cast v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .line 604
    .local v0, "other":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method
