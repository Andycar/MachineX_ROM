.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;)V
    .registers 2

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;->this$2:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;->this$2:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z
    invoke-static {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$302(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    .line 1494
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1$1;->this$2:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z
    invoke-static {v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    .line 1495
    return-void
.end method
