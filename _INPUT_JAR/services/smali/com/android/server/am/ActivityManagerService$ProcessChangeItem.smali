.class Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessChangeItem"
.end annotation


# static fields
.field static final CHANGE_ACTIVITIES:I = 0x1

.field static final CHANGE_PROCESS_STATE:I = 0x2


# instance fields
.field changes:I

.field finished:Z

.field foregroundActivities:Z

.field pid:I

.field processState:I

.field uid:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->finished:Z

    return-void
.end method
