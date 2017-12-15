.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->registerEventListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .registers 2

    .prologue
    .line 980
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
