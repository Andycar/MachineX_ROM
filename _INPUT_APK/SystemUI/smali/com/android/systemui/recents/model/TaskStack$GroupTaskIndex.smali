.class public Lcom/android/systemui/recents/model/TaskStack$GroupTaskIndex;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupTaskIndex"
.end annotation


# instance fields
.field public groupIndex:I

.field public taskIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "gi"    # I
    .param p2, "ti"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$GroupTaskIndex;->groupIndex:I

    .line 175
    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$GroupTaskIndex;->taskIndex:I

    .line 176
    return-void
.end method
