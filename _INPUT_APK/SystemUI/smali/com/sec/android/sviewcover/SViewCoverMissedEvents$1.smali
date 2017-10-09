.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;
.super Ljava/lang/Object;
.source "SViewCoverMissedEvents.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->onItemClick(I)V

    .line 272
    return-void
.end method
