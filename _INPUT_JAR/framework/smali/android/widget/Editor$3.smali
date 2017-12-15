.class Landroid/widget/Editor$3;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->setWBPositionListenerEnalbed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    .prologue
    .line 6330
    iput-object p1, p0, Landroid/widget/Editor$3;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .registers 8
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 6334
    iget-object v1, p0, Landroid/widget/Editor$3;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v0

    .line 6335
    .local v0, "wb":Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    if-eqz v0, :cond_17

    if-nez p3, :cond_11

    if-eqz p4, :cond_17

    .line 6336
    :cond_11
    if-eqz p3, :cond_18

    const/4 v1, 0x1

    :goto_14
    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->notifyPositionChanged(I)V

    .line 6338
    :cond_17
    return-void

    .line 6336
    :cond_18
    const/4 v1, 0x2

    goto :goto_14
.end method
