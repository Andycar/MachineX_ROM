.class Lcom/android/server/AlarmManagerService$PriorityClass;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PriorityClass"
.end annotation


# instance fields
.field priority:I

.field seq:I

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 3

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PriorityClass;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iget v0, p1, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 196
    return-void
.end method
